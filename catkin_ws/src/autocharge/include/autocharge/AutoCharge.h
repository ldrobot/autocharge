#include"stdio.h"
//#include"boost.h"
#include"ros/ros.h"
#include"string.h"
#include"actionlib.h"

#include<sstream>

extern float robotlocal[6];            /*机器人的6D位姿*/
extern float chargingoile[6];          /*充电桩的6D位姿*/
extern int chargingpileID;             /*充电桩的ID*/

class autocharge
{
public:
    
    

private:
    void delay_ms();

}



//等待去充电信号的ActionServer
    void gotocharge_execute(const autocharge::waitforchargeGoalConstPtr& goal, Server* as)  // Note: "Action" is not appended to DoDishes here
    {
     // Do lots of awesome groundbreaking robot stuff here
     as->setSucceeded();
    int closetochargepile_Client(int argc, char** argv);


    }
   int waitforchanrge(int argc, char** argv)
   {
     ros::init(argc, argv, "waitforcharge_server");
     ros::NodeHandle n;
     actionlib::SimpleActionServer<autocharge::waitforcharge> server(n, "do_dishes", boost::bind(&gotocharge_execute, _1, &server), false);
     server.start();
     ros::spin();
     return 0;
   }

   //准备中断充电信号的ActionServer
    void stopcharge_execute(const autocharge::stopchargeGoalConstPtr& goal, Server* as)  // Note: "Action" is not appended to DoDishes here
    {
     // Do lots of awesome groundbreaking robot stuff here
     as->setSucceeded();
    //离开充电桩的运动控制


    }
   int waitforchanrge(int argc, char** argv)
   {
     ros::init(argc, argv, "waitforcharge_server");
     ros::NodeHandle n;
     actionlib::SimpleActionServer<autocharge::waitforcharge> server(n, "do_dishes", boost::bind(&gotocharge_execute, _1, &server), false);
     server.start();
     ros::spin();
     return 0;
   }

//靠近充电桩的ActionClient
int closetochargepile_Client(int argc, char** argv)
    {
    
      ros::init(argc, argv, "closetochargepile_client");
      actionlib::SimpleActionClient< ActionSpec >::\
      client("closetochargepile", true); // true -> don't need ros::spin()
      client.waitForServer();
      autocharge::closetochargepile goal;
      // Fill in goal here
      client.sendGoal(goal);
      client.waitForResult(ros::Duration(5.0));
    }

//靠近充电桩的ActionServer
    void closetochargepilr_execute(const autocharge::closetochargepileGoalConstPtr& goal, Server* as)  // Note: "Action" is not appended to DoDishes here
    {
     // Do lots of awesome groundbreaking robot stuff here
     as->setSucceeded();
     //运动控制部分代码
    }
   int closetochargepile_ActionServer(int argc, char** argv)
   {
     ros::init(argc, argv, "ckosetocharge_server");
     ros::NodeHandle n;
     actionlib::SimpleActionServer<autocharge::closetochargepile> server(n, "do_dishes", boost::bind(&execute, _1, &server), false);
     server.start();
     ros::spin();
     return 0;
   }


//靠近充电桩的具体运动控制



int charginginit()
/* 初始化应该在开机时运行，发布charge话题；
 * 建立一个等待去充电 信号的listener节点；
 * 建立一个订阅激光雷达距离话题的listener节点，但不激活；
 * 建立一个等待新任务 信号的linstener节点,但不激活；
 * 建立一个等待已充上电信号的listener节点，不激活；
*/
{   
    int waitforchanrge(int argc, char** argv)；


}


/




// //建立了一个等待充电信号的gotochargelistener订阅者，在gotocharge话题中接收消息，收到消息后调用gotochargecallback函数
//     void gotochargeCallback()
//         {
//         ;//具体执行，发送goal
//         }
//     int gotochargelistener(int argc, char **argv)
//         {
//         ros::init(argc, argv, "gotochargelistener");
//         ros::NodeHandle GTC;
//         ros::Subscriber sub = GTC.subscribe("gotocharge", 10, gotochargeCallback);//消息到达时调用lasercallback
//         ros::spin();
//         return 0;
//         }



    // ros::NodeHandle::advertise 	(	laser_pub, 1000,s,bye,false )	
    // ros::init(1,1,"charge");
    // ros::NodeHandle laser;//
    // ros::Publisher laser_pub = laser.advertise<std_msgs::String>("laser", 1000);
    // ros::Rate loop_rate(10);
    // int count = 0;
    // while (ros::ok())
    // {
    //     std_msgs::String msg;
    //     std::stringstream ss;
    //     ss << "hello world " << count;
    //     msg.data = ss.str();
    //     laser_pub.publish(msg);
    //     //ROS_INFO("%s", msg.data.c_str());
    //     ros::spinOnce();
    //     loop_rate.sleep();
    //     ++count;
    // }
    // return 0;