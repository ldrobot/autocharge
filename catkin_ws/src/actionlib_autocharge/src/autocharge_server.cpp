 #include <ros/ros.h>
    #include <actionlib/server/simple_action_server.h>
    #include <actionlib_autocharge/autochargeAction.h>
    #include <geometry_msgs/Twist.h>
    #include <ros/publisher.h>

     
    
    class autochargeAction
    {
    protected:
    #include <ros/ros.h>
     ros::NodeHandle ac_;
     actionlib::SimpleActionServer<actionlib_autocharge::autochargeAction> as_; // NodeHandle instance must be created before this line. Otherwise strange error occurs.
     std::string action_name_;
     // create messages that are used to published feedback/result
     actionlib_autocharge::autochargeFeedback feedback_;
     actionlib_autocharge::autochargeResult result_;

     geometry_msgs::Pose local;//预留给雷达信号的变量
     bool charing=false;
    // void callback();
   
   public:
   
     autochargeAction(std::string name) :
       as_(ac_, name, boost::bind(&autochargeAction::executeCB, this, _1), false),
       action_name_(name)
     {
       as_.start();
     }
   
     ~autochargeAction(void)
    {
     }
   
     void executeCB(const actionlib_autocharge::autochargeGoalConstPtr &goal)
     {
       // helper variables

       int i=0;
      ros::Rate r(4096);
      ros::Publisher pub = ac_.advertise<geometry_msgs::Twist>("turtle1/cmd_vel",5);
      ros::Rate loop_rate(1);
      
          while(ros::ok() & i<=10)
          {
         //定义一个msg，往msg中装入需要广播的消息
         geometry_msgs::Twist msg;
 
         //打印输出hello
	       //std::cout<<"print from cout: Hello wanzew..."<<std::endl;
 
         //将需要广播的字符串装入msg中
         //geometry_msgs::Twist 
         //msg = '2.0,0.0,0.0,0.0,0.0,-1.8';
         switch (goal->goal_ID)/*根据goal_ID来测量距离与速度 */
         {
         case 1:                  //去指定的充电桩充电
         {
          msg.linear.x=2.0;
          msg.linear.y=0.0;
          msg.linear.z=0.0;

          msg.angular.x=0.0;
          msg.angular.y=0.0;
          if(i%2) 
           {msg.angular.z=-1.8;}
           else
           {
             msg.angular.z=1.8;
           }
           break;
         }
          case 2:                   //回去工作
          {
            msg.linear.x=2.0;
            msg.linear.y=0.0;
            msg.linear.z=0.0;

            msg.angular.x=0.0;
            msg.angular.z=0.0;
          if(i%2) 
           {msg.angular.y=-1.8;
            msg.angular.x=-1.8;}
           else
           {
             msg.angular.y=1.8;
             msg.angular.x=1.8;
           }
           break;

          }

         default:/*使用雷达信号自己找个充电桩充电 */
         {
          // ros::Subscriber sub = ac_.subscribe<geometry_msgs::Pose>("laser",1000 );//， &autochargeAction::callback);// , this);
          //ros::spin();



         
           break;
         }
         }
                   
          //使用ROS_INFO打印提醒消息
	       //ros::ROS_INFO("%s",msg.c_str());
        
         //把std_msgs::String类型的消息msg
         pub.publish(msg);
         i++;
 
         //发布消息时可以不写spinOnce（），但订阅某个消息时必须要写spin（）函数
	       //spinOnce();
         //靠sleep（）函数保证连续两个消息之间的时间恰好为一个周期
         loop_rate.sleep();

         feedback_.current_pose.position.x=feedback_.current_pose.position.x+0.1;
         feedback_.current_pose.position.y=feedback_.current_pose.position.y+0.1;
         feedback_.current_pose.position.z=feedback_.current_pose.position.z+0.1;
         
         feedback_.current_pose.orientation.x=feedback_.current_pose.orientation.x+0.2;
         feedback_.current_pose.orientation.y=feedback_.current_pose.orientation.y+0.2;
         feedback_.current_pose.orientation.z=feedback_.current_pose.orientation.z+0.2;
         feedback_.current_pose.orientation.w=feedback_.current_pose.orientation.w+0.2;
         as_.publishFeedback(feedback_);
         ROS_INFO("%s: Executing, mission: %i ,close to chargepile %i, %i, %i", action_name_.c_str(), goal->goal_ID, feedback_.current_pose);
         r.sleep();
        //  if(x==1.0)
        //  {charing=true;
        //  break;}
      }
      charing=true;
     //}

      // start executing the action
       
         // check that preempt has not been requested by the client
         if (as_.isPreemptRequested() || !ros::ok())
         {
           ROS_INFO("%s: Preempted", action_name_.c_str());
           // set the action state to preempted
           as_.setPreempted();
           charing = false;
         }
   
       if(charing)
       {
         result_.final_pose = feedback_.current_pose;
         ROS_INFO("charing");//, action_name_.c_str());
         // set the action state to succeeded
         as_.setSucceeded(result_);
         ROS_INFO("%s: Executing, mission: %i ,close to chargepile %i, %i, %i", action_name_.c_str(), goal->goal_ID, result_.final_pose);
       }
     }
   
// void callback()
// {

// }


   
   };
   
   
   int main(int argc, char** argv)
   {
     ros::init(argc, argv, "autocharge");
   
     autochargeAction autocharge("autocharge");

     ros::spin();
   
     return 0;
   }