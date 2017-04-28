/**
 * @file path_manager_base.h
 *
 * Base class definition for autopilot path follower in chapter 10 of UAVbook, see http://uavbook.byu.edu/doku.php
 *
 * @author Gary Ellingson <gary.ellingson@byu.edu>
 * adapted by Judd Mehr and Brian Russel for RosPlane software
 */

#ifndef PATH_MANAGER_BASE_H
#define PATH_MANAGER_BASE_H

#include <ros/ros.h>
#include <fcu_common/State.h>
#include <ros_plane/Current_Path.h>
#include <ros_plane/Waypoint.h>
#include <sensor_msgs/Imu.h>
#include <std_msgs/Float32.h>
#include <std_msgs/Float32MultiArray.h>
#include <sensor_msgs/FluidPressure.h>
#include <math.h>
#include <Eigen/Eigen>
#include <ros_plane/ControllerConfig.h>


#define SIZE_WAYPOINT_ARRAY 20
namespace rosplane {
class path_manager_base
{
public:
    path_manager_base();
    void waypoint_init();

protected:

    struct waypoint_s{
        float w[3];
        float chi_d;
        bool  chi_valid;
        float Va_d;
    };

    struct waypoint_s _waypoints[SIZE_WAYPOINT_ARRAY];
    int _num_waypoints;
    struct waypoint_s* _ptr_a;

    struct input_s{
        float pn;               /** position north */
        float pe;               /** position east */
        float h;                /** altitude */
        float chi;              /** course angle */
    };

    struct output_s{
        bool  flag;             /** Inicates strait line or orbital path (true is line, false is orbit) */
        float Va_d;             /** Desired airspeed (m/s) */
        float r[3];             /** Vector to origin of straight line path (m) */
        float q[3];             /** Unit vector, desired direction of travel for line path */
        float c[3];             /** Center of orbital path (m) */
        float rho;              /** Radius of orbital path (m) */
        int8_t lambda;          /** Direction of orbital path (cw is 1, ccw is -1) */
    };

    struct params_s {
        double R_min;
    };

    virtual void manage(const struct params_s &params, const struct input_s &input, struct output_s &output) = 0;

private:

    ros::NodeHandle nh_;
    ros::NodeHandle nh_private_;
    ros::Subscriber _vehicle_state_sub;     /**< vehicle state subscription */
    ros::Subscriber _new_waypoint_sub;      /**< new waypoint subscription */
    ros::Publisher  _current_path_pub;      /**< controller commands publication */

    struct params_s                 params_;
    //    struct {
    //        param_t R_min;
    //    } _params_handles; /**< handles for interesting parameters */


    fcu_common::State _vehicle_state;     /**< vehicle state */

    void vehicle_state_callback(const fcu_common::StateConstPtr& msg);
    void new_waypoint_callback(const ros_plane::Waypoint &msg);
    void current_path_publish(struct output_s &output);
};
} //end namespace
#endif // PATH_MANAGER_BASE_H
