#!/usr/bin/env python
import rospy, tf
from nav_msgs.msg import Odometry
from diff_flat.msg import y_traj
import numpy as np
import math
from fcu_common.msg import Command

# states = [pn, pe, pd, pn_dot, pe_dot, pd_dot, psi]
states = np.matrix([[0],[0],[0],[0],[0],[0],[0]])

# x_reference = [pn, pe, pd, pn_dot, pe_dot, pd_dot, psi]
x_r = np.matrix([[0],[0],[0],[0],[0],[0],[0]])

# u_reference = [pn_ddot, pe_ddot, pd_ddot-g, psi_dot]
u_r = np.matrix([[0],[0],[0],[0]])

# K - gain matrix found by LQR
# K = np.matrix([[0.7071, 0, 0, 1.3836, 0, 0, 0],
#                [0, 0.7071, 0, 0, 1.3836, 0, 0],
#                [0, 0, 0.7071, 0, 0, 1.3836, 0],
#                [0, 0, 0, 0, 0, 0, 0.7071]])
K = np.matrix([[0.3162, 0, 0, 0.8558, 0, 0, 0],
               [0, 0.3162, 0, 0, 0.8558, 0, 0],
               [0, 0, 0.3162, 0, 0, 0.8558, 0],
               [0, 0, 0, 0, 0, 0, 0.3162]])


# euler angle = [phi, theta, psi]
euler_angle = np.matrix([[0],[0],[0]])

# pqr = [p, q, r]   angular velocity in body frame
pqr = np.matrix([[0],[0],[0]])

def trajectoryCallback(data):
    global x_r
    global u_r

    # x reference
    x_r[0,0] = data.pn
    x_r[1,0] = data.pe
    x_r[2,0] = data.pd
    x_r[3,0] = data.pn_dot
    x_r[4,0] = data.pe_dot
    x_r[5,0] = data.pd_dot
    x_r[6,0] = data.psi

    # u reference
    u_r[0,0] = data.pn_ddot
    u_r[1,0] = data.pe_ddot
    u_r[2,0] = data.pd_ddot-9.8
    u_r[3,0] = data.psi_dot
    return

def stateCallback(data):
    global states
    global euler_angle
    global pqr

    # simplified states. position and velocity in inertial NED frame.
    states[0,0] = data.pose.pose.position.x     # pn
    states[1,0] = data.pose.pose.position.y     # pe
    states[2,0] = data.pose.pose.position.z     # pd

    states[3,0] = data.twist.twist.linear.x     # pn_dot
    states[4,0] = data.twist.twist.linear.y     # pe_dot
    states[5,0] = data.twist.twist.linear.z     # pd_dot

    pqr[0,0] = data.twist.twist.angular.x   # p
    pqr[1,0] = data.twist.twist.angular.y   # q
    pqr[2,0] = data.twist.twist.angular.z   # r

    # orientation are following the convention of the UAV book. page.29
    q_x = data.pose.pose.orientation.x
    q_y = data.pose.pose.orientation.y
    q_z = data.pose.pose.orientation.z
    q_w = data.pose.pose.orientation.w
    quaternion = (q_x, q_y, q_z, q_w)
    euler = tf.transformations.euler_from_quaternion(quaternion)
    roll = euler[0]
    pitch = euler[1]
    yaw = euler[2]
    states[6,0] = yaw   # psi

    euler_angle[0,0] = roll
    euler_angle[1,0] = pitch
    euler_angle[2,0] = yaw
    return

# 'u' is the state-space model input. u = [pn_ddot, pe_ddot, pd_ddot-g, psi_dot]
def calculate_u():
    global K
    global states
    global x_r
    global u_r

    x_tilde = states - x_r
    u_tilde = -K*x_tilde
    u = u_r + u_tilde

    return u

def calculate_v(u):
    global euler_angle
    global pqr

    phi = euler_angle[0,0]
    theta = euler_angle[1,0]
    psi = euler_angle[2,0]

    p = pqr[0,0]
    q = pqr[1,0]
    r = pqr[2,0]

    mass = 2.856

    T_d = mass*math.sqrt(pow(u[0,0],2)+pow(u[1,0],2)+pow(u[2,0],2))

    R_psi = np.matrix([[math.cos(psi), math.sin(psi), 0],
                      [-math.sin(psi), math.cos(psi), 0],
                      [0, 0, 1]])

    w = R_psi.getT() * np.matrix([[u[0,0]],[u[1,0]],[u[2,0]]]) * mass / (-T_d)

    phi_d = math.asin(-w[1,0])
    theta_d = math.atan2(w[0,0], w[2,0])
    r_d = math.cos(theta)/math.cos(phi)*u[3,0]-q*math.tan(phi)
    return (T_d, phi_d, theta_d, r_d)

def listener():

    print "diff_flatness started"
    rospy.init_node('diff_flatness', anonymous=True)
    rospy.Subscriber("y_traj", y_traj, trajectoryCallback)
    rospy.Subscriber("mikey/ground_truth/odometry", Odometry, stateCallback)
    pub = rospy.Publisher("mikey/command", Command, queue_size=1)
    error_pub = rospy.Publisher('error', y_traj, queue_size=1)
    msg = Command()
    msg.mode = 2
    rate = rospy.Rate(20) # 10hz
    max_thrust = 59.844

    error_msg = y_traj()

    while not rospy.is_shutdown():
        # msg.y = 0.1
        # msg.F = 0.47
        u = calculate_u()
        (T_d, phi_d, theta_d, r_d) = calculate_v(u)

        error_msg.pn = x_r[0,0]-states[0,0]
        error_msg.pe = x_r[1,0]-states[1,0]
        error_msg.pd = x_r[2,0]-states[2,0]
        error_msg.psi = x_r[6,0]-states[6,0]
        error_pub.publish(error_msg)

        msg.x = phi_d
        msg.y = theta_d
        msg.z = r_d
        msg.F = T_d/max_thrust
        print T_d, T_d/max_thrust

        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    listener()
