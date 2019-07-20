#include <ros/ros.h>
#include "tjc_screen/tjc_screen.h"

int main(int argc, char*argv[])  //主函数，agrc是形参传到函数，argv是传递字符串的指针。
{
    ros::init(argc, argv, "tjc_screen_node");  //初始化ros里的screen节点
    ros::NodeHandle nh("~");    //创建句柄节点
    TJCScreen screen(&nh);     //输出nh里面存储的字符串。
	ros::spin();          //进入一个循环，尽可能快地调用消息回调。
    return 0;
}

