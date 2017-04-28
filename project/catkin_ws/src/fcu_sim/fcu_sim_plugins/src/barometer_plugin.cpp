/*
 * Copyright 2016 James Jackson, Brigham Young University - Provo, UT
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0

 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "fcu_sim_plugins/barometer_plugin.h"

namespace gazebo {

AltimeterPlugin::AltimeterPlugin()
    : ModelPlugin(),
      node_handle_(0){}

AltimeterPlugin::~AltimeterPlugin() {
  event::Events::DisconnectWorldUpdateBegin(updateConnection_);
  if (node_handle_) {
    node_handle_->shutdown();
    delete node_handle_;
  }
}


void AltimeterPlugin::Load(physics::ModelPtr _model, sdf::ElementPtr _sdf)
{
  // Configure Gazebo Integration
  model_ = _model;
  world_ = model_->GetWorld();
  namespace_.clear();
  if (_sdf->HasElement("namespace"))
    namespace_ = _sdf->GetElement("namespace")->Get<std::string>();
  else
    gzerr << "[barometer_plugin] Please specify a namespace.\n";
  if (_sdf->HasElement("linkName"))
    link_name_ = _sdf->GetElement("linkName")->Get<std::string>();
  else
    gzerr << "[barometer_plugin] Please specify a linkName.\n";
  link_ = model_->GetLink(link_name_);
  if (link_ == NULL)
    gzthrow("[barometer_plugin] Couldn't find specified link \"" << link_name_ << "\".");
  // Connect to the Gazebo Update
  this->updateConnection_ = event::Events::ConnectWorldUpdateBegin(boost::bind(&AltimeterPlugin::OnUpdate, this, _1));
  frame_id_ = link_name_;

  // load params from xacro
  getSdfParam<std::string>(_sdf, "messageTopic", message_topic_, "baro");
  getSdfParam<double>(_sdf, "noiseStdev", error_stdev_, 0.10);
  getSdfParam<double>(_sdf, "publishRate", pub_rate_, 50.0);
  getSdfParam<bool>(_sdf, "noiseOn", noise_on_, true);
  last_time_ = world_->GetSimTime();

  // Configure ROS Integration
  node_handle_ = new ros::NodeHandle(namespace_);
  alt_pub_ = node_handle_->advertise<fcu_common::Barometer>(message_topic_, 10);

  // Configure Noise
  random_generator_= std::default_random_engine(std::chrono::system_clock::now().time_since_epoch().count());
  standard_normal_distribution_ = std::normal_distribution<double>(0.0, error_stdev_);
}


void AltimeterPlugin::OnUpdate(const common::UpdateInfo& _info)
{
  // check if time to publish
  common::Time current_time  = world_->GetSimTime();
  if((current_time - last_time_).Double() > 1.0/pub_rate_){

    // pull z measurement out of Gazebo
    math::Pose current_state_LFU = link_->GetWorldPose();

    fcu_common::Barometer message;
    message.altitude = current_state_LFU.pos.z;
    // add noise, if requested
    if(noise_on_){
      message.altitude += standard_normal_distribution_(random_generator_);
    }

    // Invert measurement model for pressure and temperature
    message.temperature = 25.0; // This is constant for simulation
    message.pressure = 101325.0*pow(1- (2.25577e-5 * message.altitude), 5.25588);


    // publish message
    message.header.stamp.fromSec(world_->GetSimTime().Double());
    alt_pub_.publish(message);
  }
}

GZ_REGISTER_MODEL_PLUGIN(AltimeterPlugin);
}
