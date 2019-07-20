#include <ros/ros.h>
#include <actionlib/client/simple_action_client.h>
#include <actionlib/client/terminal_state.h>
#include <actionlib_autocharge/autochargeAction.h>

// //充电桩6D位姿
// float chargepile_a16D[7] = {1,1,1,2,2,2,2};
// float chargepile_a26D[7] = {1,2,1,2,2,2,2};
// float chargepile_a36D[7] = {1,1,1,2,2,2,2};
// float chargepile_a46D[7] = {1,1,1,2,2,2,2};

// //充电桩正前方3米的6D位姿
// float awaychargepile_b16D[7] = {1,1,1,2,2,2,2};
// float awaychargepile_b26D[7] = {1,1,1,2,2,2,2};
// float awaychargepile_b36D[7] = {1,1,1,2,2,2,2};
// float awaychargepile_b46D[7] = {1,1,1,2,2,2,2};


// float *a1_= chargepile_a16D;
// float *a2_= chargepile_a26D;
// float *a3_= chargepile_a36D;
// float *a4_= chargepile_a46D;

// float *b1_= awaychargepile_b16D;
// float *b2_= awaychargepile_b26D;
// float *b3_= awaychargepile_b36D;
// float *b4_= awaychargepile_b46D;

//充电桩ID
// float chargepile_ID[4] = {*a1_,*a2_,*a3_,*a4_};
// float awaychargepile_ID[4]={*b1_,*b2_,*b3_,*b4_};
//char   goal_ID=chargepile_ID[0];


//充电桩编号
int n;
//, bool gotocharge, int n

int main (int argc, char **argv)//调用时需要指定是否是去充电
{
  ros::init(argc, argv, "autocharge_client");

  // create the action client
  // true causes the client to spin its own thread
  actionlib::SimpleActionClient<actionlib_autocharge::autochargeAction> ac("autocharge", true);

  ROS_INFO("Waiting for action server to start.");
  // wait for the action server to start
  ac.waitForServer(); //will wait for infinite time

  ROS_INFO("Action server started, sending goal.");
  // send a goal to the action
  actionlib_autocharge::autochargeGoal goal;


  //goal.goal_ID[]={1,2,3,4};
  // if(gotocharge)  {goal.goal_ID =chargepile_ID[n]; }
  // else {goal.goal_ID =awaychargepile_ID[n]; }

  goal.goal_ID=2;
  //ros::NodeHandle::setParam("goal.goal_ID",1);

  
  ac.sendGoal(goal);

  //ac.cancelGoal();//取消目标
  

  //wait for the action to return
  bool finished_before_timeout = ac.waitForResult(ros::Duration(30.0));

  if (finished_before_timeout)
  {
    actionlib::SimpleClientGoalState state = ac.getState();
    ROS_INFO("Action finished: %s",state.toString().c_str());
  }
  else
    ROS_INFO("Action did not finish before the time out.");

  //exit
  return 0;
}

// int main()
// {
//     autocharge (3, goal, true);//调用时需要指定是否是去充电

// }
