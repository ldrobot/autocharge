#include <ros/ros.h>
#include "AsyncSerial.h"
#include "std_msgs/String.h"
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/BatteryState.h>

#include <vector>
#include <algorithm>
class TJCScreen
{
private:
    ros::NodeHandle *m_nh;

    ros::Subscriber mSubBattery;
    ros::Subscriber mSubCmdVel;
    ros::Timer      mCheckAliveTim;

    ros::Subscriber mSubIPAddress;
/* 
    ros::Subscriber mSubCurrentNet;
    ros::Subscriber mSubNetwork;
    ros::Subscriber mSubNetPassword;
    ros::Subscriber mSubIPAddress;
    ros::Subscriber mSubSubnetMask;
    ros::Subscriber mSubDefaultGateway;
*/
    CallbackAsyncSerial *mSerial;
    std::string mPortName;
    int mPortBaud;
    std::vector<char> mReadBuffer;

    //页面及元素的镜像变量
    int mCurrentPageId;
    enum EPageNum
    {
        e_page_start,
        e_page_main,
        e_page_sysinfo,
        e_page_alarm,
        e_page_netcfg
    };

    int mBatteryPercent;
    bool mRefreshBatteryPercent;

    int mIPPercent;
    bool mRefreshIPPercent;

public:
    TJCScreen(ros::NodeHandle *n)
        : m_nh(n),
          mCurrentPageId(-1),
          mBatteryPercent(-1),
          mRefreshBatteryPercent(false)
    {
        ros::spinOnce();
        const std::string nodeName = ros::this_node::getName();

        //检测参数合法性
        m_nh->param("/" + nodeName + "/port", mPortName, std::string("/dev/ttyUSB0"));
        m_nh->param("/" + nodeName + "/baud", mPortBaud, 9600);
        if (mPortName.empty())
        {
            ROS_ERROR("%s need port for communition.", nodeName.c_str());
            ros::shutdown();
            return;
        }
        if (mPortBaud != 9600)
        {
            ROS_ERROR("%s need baud(9600) for communition.", nodeName.c_str());
            ros::shutdown();
            return;
        }
        //等待依赖资源

        //订阅相关话题
        this->mSubCmdVel = m_nh->subscribe("/cmd_vel", 5, &TJCScreen::cmd_vel_cb, this);
        this->mSubBattery = m_nh->subscribe("/battery", 5, &TJCScreen::battert_info_cb, this);

        this->mSubIPAddress = m_nh->subscribe("/ipaddress", 5, &TJCScreen::ipaddress_info_cb, this);

        ROS_INFO("%s[%d]", __func__, __LINE__);
        this->mSerial = new CallbackAsyncSerial();
        while(this->mSerial->isOpen()==false)
        {
            ros::Duration(1.0).sleep();
            if(ros::isShuttingDown())
                return;
            
            try  //可能抛出的异常
            {
                this->mSerial->open(mPortName, mPortBaud);
                this->mSerial->setCallback(std::bind(&TJCScreen::serial_read_cb, this, std::placeholders::_1, std::placeholders::_2));
            }
            catch (std::exception &e)  //异常类型的处理
            {
                this->mSerial->close();
                ROS_ERROR("%s open uart failed. Exception:%s.", nodeName.c_str(), e.what());
            }
        }
        this->mCheckAliveTim = m_nh->createTimer(ros::Duration(2.0), &TJCScreen::check_serial_alive_cb, this);
        send_ascii_cmd_with_separation("page start");

        m_nh->setParam("/screen_ready", true);
    }
    virtual ~TJCScreen()
    {
        if (this->mSerial)
        {
            try
            {
                this->mSerial->close();
            }
            catch (std::exception &e)
            {
                ROS_ERROR("~TJCScreen failed. Exception:%s.", e.what());
            }
            delete this->mSerial;
            this->mSerial = nullptr;
        }

        m_nh->setParam("/screen_ready", false);
    }

    void check_serial_alive_cb(const ros::TimerEvent &e)
    {
        const std::string nodeName = ros::this_node::getName();
        if(this->mSerial && this->mSerial->errorStatus())
        {
            delete mSerial;
            this->mSerial = new CallbackAsyncSerial();
            return;
        }
        if(this->mSerial && this->mSerial->isOpen()==false)
        {
            try
            {
                this->mSerial->open(mPortName, mPortBaud);
                this->mSerial->setCallback(std::bind(&TJCScreen::serial_read_cb, this, std::placeholders::_1, std::placeholders::_2));
            }
            catch (std::exception &e)
            {
                this->mSerial->close();
                ROS_ERROR("%s open uart failed. Exception:%s.", nodeName.c_str(), e.what());
            }

            if(this->mSerial->isOpen())
            {
                send_ascii_cmd_with_separation("page start");
            }
        }
    }

    void cmd_vel_cb(const geometry_msgs::Twist::ConstPtr &twist)
    {
    }

    void ipaddress_info_cb(const std_msgs::String::ConstPtr &msg)
    {
        this->mIPPercent = int(msg->data.c_str());  
        this->mRefreshIPPercent = true;
    }


    void battert_info_cb(const sensor_msgs::BatteryState::ConstPtr &state)
    {
        this->mBatteryPercent = int(state->percentage * 100);
        this->mRefreshBatteryPercent = true;
    }

    void serial_read_cb(const char *data, size_t len)
    {
        for (size_t i = 0; i < len; i++)
            this->mReadBuffer.push_back(data[i]);
        hmi_serial_command_decode();
    }
    //直接操作mReadBuffer对象，从对象中搜索0xFF,0xFF,0xFF三字节分隔符
    //分割符之前的数据为一个独立指令，对指令进行解析操作
    //移除已经解析的指令和分割符
    void hmi_serial_command_decode()
    {
        //搜索分隔符
        std::vector<char> const_separation = {char(0xFF), char(0xFF), char(0xFF)};
        std::vector<char>::iterator it_separation = std::search(mReadBuffer.begin(), mReadBuffer.end(), const_separation.begin(), const_separation.end());
        if (it_separation == mReadBuffer.end())
            return;
        //分析指令
        std::vector<char> cmd(mReadBuffer.begin(), it_separation);
        hmi_serial_command_func(cmd);
        //移除指令和分隔符
        mReadBuffer.erase(mReadBuffer.begin(), it_separation + 3);
    }
    void hmi_serial_command_func(std::vector<char> &cmd)
    {
        char buffer[512];
        if (cmd.empty())
            return;
        switch (cmd[0])
        {
        case char(0x65):
            //触摸热区事件返回      0X65+页面ID+按键ID+触摸事件+结束符
            break;
        case char(0x66):
            //当前页面的ID号返回    0X66+页面ID+结束符
            if (cmd.size() == 2)
            {
                this->mCurrentPageId = cmd[1];
                ROS_INFO("current page id:%d", this->mCurrentPageId);
                if (mCurrentPageId == e_page_start)
                {
                    send_ascii_cmd_with_separation("page main");
                }
                if (mCurrentPageId == e_page_main)
                {
                    if ((mBatteryPercent >= 0) && (mRefreshBatteryPercent==true))
                    {
                        snprintf(buffer, sizeof(buffer), "main.nbattle.val=%d", this->mBatteryPercent);
                        send_ascii_cmd_with_separation(buffer);
                        mRefreshBatteryPercent = false;
                    }
                }
                if (mCurrentPageId == e_page_netcfg)
                {
                    if ((mBatteryPercent >= 0) && (mRefreshBatteryPercent==true))
                    {
                        snprintf(buffer, sizeof(buffer), "IP is %d", this->mIPPercent);
                        send_ascii_cmd_with_separation(buffer);
                        mRefreshBatteryPercent = false;
                }
            }
            break;
        default:
            ROS_INFO("default cmd: %x, len %lu", cmd[0], cmd.size());
            break;
        }
    }
    void send_ascii_cmd_with_separation(const char *cmd)
    {
        ROS_INFO("send_ascii_cmd_with_separation:%s",cmd);
        std::vector<char> const_separation = {char(0xFF), char(0xFF), char(0xFF)};
        try
        {
            if (this->mSerial && this->mSerial->isOpen())
                this->mSerial->write(cmd, strlen(cmd));
            if (this->mSerial && this->mSerial->isOpen())
                this->mSerial->write(const_separation);
        }
        catch (std::exception &e)
        {
            this->mSerial->close();
            ROS_ERROR("%s open uart failed. Exception:%s.", __func__, e.what());
        }
    }
};