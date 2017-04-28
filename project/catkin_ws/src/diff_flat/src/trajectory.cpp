#include "ros/ros.h"
#include "std_msgs/String.h"
#include "diff_flat/y_traj.h" // custom message
#include <math.h>

#define PI 3.14159265

int main(int argc, char **argv)
{
  ros::init(argc, argv, "trajectory");

  ros::NodeHandle n;
  ros::Publisher trajectory_pub = n.advertise<diff_flat::y_traj>("y_traj", 1);

  ros::Rate loop_rate(20);

  int radius = 10;
  double one_loop = 20; // expected time for one loop
  double omega = 2*PI/one_loop;

  while (ros::ok())
  {
    double current_sec = ros::Time::now().toSec(); // get current time
    diff_flat::y_traj msg;
    msg.pn = radius*sin(omega*current_sec);
    msg.pe = radius*cos(omega*current_sec);
    msg.pd = -10;
    msg.psi = 0;
    msg.pn_dot = radius*omega*cos(omega*current_sec);
    msg.pe_dot = -radius*omega*sin(omega*current_sec);
    msg.pd_dot = 0;
    msg.psi_dot = 0;
    msg.pn_ddot = -radius*omega*omega*sin(omega*current_sec);
    msg.pe_ddot = -radius*omega*omega*cos(omega*current_sec);
    msg.pd_ddot = 0;
    msg.psi_ddot = 0;

    trajectory_pub.publish(msg);
    ros::spinOnce();
    loop_rate.sleep();
  }


  return 0;
}
