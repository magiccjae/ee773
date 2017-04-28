#include "ros/ros.h"
#include "std_msgs/String.h"
#include "diff_flat/y_traj.h" // custom message
#include "nav_msgs/Odometry.h"
#include <math.h>

#define PI 3.14159265



void trajectoryCallback(const diff_flat::y_traj::ConstPtr& msg)
{


}

void stateCallback(const nav_msgs::Odometry::ConstPtr& msg)
{


}

int main(int argc, char **argv)
{
  ros::init(argc, argv, "diff_flat");

  ros::NodeHandle n;
  ros::Subscriber trajectory_sub = n.subscribe("y_traj", 1, trajectoryCallback);
  ros::spin();

  return 0;
}
