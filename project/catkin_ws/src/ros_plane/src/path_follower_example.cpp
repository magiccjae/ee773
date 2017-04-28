#include "path_follower_example.h"


namespace rosplane {

path_follower::path_follower()
{
}

void path_follower::follow(const params_s &params, const input_s &input, output_s &output)
{
    if(input.flag) // follow straight line path specified by r and q
    {
      ROS_INFO_STREAM("Params are: \n params.k_path" << params.k_path << "\n chi_infty = " << params.chi_infty);
      ROS_INFO_STREAM("Params are: \n params.k_orbit" << params.k_orbit << "\n rho_orbit = " << input.rho_orbit << "\n lam_orbit = " << input.lam_orbit);
        // compute wrapped version of the path angle
        float chi_q = atan2f(input.q_path[1],input.q_path[0]);
        while (chi_q - input.chi < -M_PI)
            chi_q += 2*M_PI;
        while (chi_q - input.chi > M_PI)
            chi_q -= 2*M_PI;

        float path_error = -sinf(chi_q)*(input.pn - input.r_path[0]) + cosf(chi_q)*(input.pe - input.r_path[1]);
        // heading command
        output.chi_c = chi_q - params.chi_infty*2/M_PI*atanf(params.k_path*path_error);

        // desired altitude
        float h_d = -input.r_path[2]-sqrtf(powf((input.r_path[0] - input.pn),2) + powf((input.r_path[1] - input.pe),2))*(input.q_path[2])/sqrtf(powf(input.q_path[0],2) + powf(input.q_path[1],2));
        // commanded altitude is desired altitude
        output.h_c = h_d;
    }
    else
    {
      ROS_INFO_STREAM("Params are: \n params.k_path" << params.k_path << "\n chi_infty = " << params.chi_infty);
      ROS_INFO_STREAM("Params are: \n params.k_orbit" << params.k_orbit << "\n rho_orbit = " << input.rho_orbit << "\n lam_orbit = " << input.lam_orbit);
        float d = sqrtf(powf((input.pn - input.c_orbit[0]),2) + powf((input.pe - input.c_orbit[1]),2)); // distance from orbit center
        // compute wrapped version of angular position on orbit
        float varphi = atan2f(input.pe - input.c_orbit[1], input.pn - input.c_orbit[0]);
        while ((varphi - input.chi) < -M_PI)
            varphi += 2*M_PI;
        while ((varphi - input.chi) > M_PI)
            varphi -= 2*M_PI;
        //compute orbit error
        float norm_orbit_error = (d - input.rho_orbit)/input.rho_orbit;
        output.chi_c = varphi + input.lam_orbit*(M_PI/2 + atanf(params.k_orbit*norm_orbit_error));

        // commanded altitude is the height of the orbit
        float h_d = -input.c_orbit[2];
        output.h_c = h_d;
    }
    output.Va_c = input.Va_d;
}

} //end namespace
