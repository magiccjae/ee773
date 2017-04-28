// Generated by gencpp from file fcu_common/Barometer.msg
// DO NOT EDIT!


#ifndef FCU_COMMON_MESSAGE_BAROMETER_H
#define FCU_COMMON_MESSAGE_BAROMETER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace fcu_common
{
template <class ContainerAllocator>
struct Barometer_
{
  typedef Barometer_<ContainerAllocator> Type;

  Barometer_()
    : header()
    , altitude(0.0)
    , pressure(0.0)
    , temperature(0.0)  {
    }
  Barometer_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , altitude(0.0)
    , pressure(0.0)
    , temperature(0.0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _altitude_type;
  _altitude_type altitude;

   typedef float _pressure_type;
  _pressure_type pressure;

   typedef float _temperature_type;
  _temperature_type temperature;




  typedef boost::shared_ptr< ::fcu_common::Barometer_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fcu_common::Barometer_<ContainerAllocator> const> ConstPtr;

}; // struct Barometer_

typedef ::fcu_common::Barometer_<std::allocator<void> > Barometer;

typedef boost::shared_ptr< ::fcu_common::Barometer > BarometerPtr;
typedef boost::shared_ptr< ::fcu_common::Barometer const> BarometerConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fcu_common::Barometer_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fcu_common::Barometer_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace fcu_common

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'fcu_common': ['/home/magiccjae/jae_stuff/classes/ee773/project/catkin_ws/src/fcu_common/msg'], 'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::fcu_common::Barometer_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fcu_common::Barometer_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fcu_common::Barometer_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fcu_common::Barometer_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fcu_common::Barometer_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fcu_common::Barometer_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fcu_common::Barometer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8f7934988670983d230d20b43f141575";
  }

  static const char* value(const ::fcu_common::Barometer_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8f7934988670983dULL;
  static const uint64_t static_value2 = 0x230d20b43f141575ULL;
};

template<class ContainerAllocator>
struct DataType< ::fcu_common::Barometer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fcu_common/Barometer";
  }

  static const char* value(const ::fcu_common::Barometer_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fcu_common::Barometer_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
float32 altitude\n\
float32 pressure\n\
float32 temperature\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::fcu_common::Barometer_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fcu_common::Barometer_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.altitude);
      stream.next(m.pressure);
      stream.next(m.temperature);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Barometer_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fcu_common::Barometer_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fcu_common::Barometer_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "altitude: ";
    Printer<float>::stream(s, indent + "  ", v.altitude);
    s << indent << "pressure: ";
    Printer<float>::stream(s, indent + "  ", v.pressure);
    s << indent << "temperature: ";
    Printer<float>::stream(s, indent + "  ", v.temperature);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FCU_COMMON_MESSAGE_BAROMETER_H