// Generated by gencpp from file fcu_common/OutputRaw.msg
// DO NOT EDIT!


#ifndef FCU_COMMON_MESSAGE_OUTPUTRAW_H
#define FCU_COMMON_MESSAGE_OUTPUTRAW_H


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
struct OutputRaw_
{
  typedef OutputRaw_<ContainerAllocator> Type;

  OutputRaw_()
    : header()
    , values()  {
      values.assign(0.0);
  }
  OutputRaw_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , values()  {
  (void)_alloc;
      values.assign(0.0);
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array<float, 16>  _values_type;
  _values_type values;




  typedef boost::shared_ptr< ::fcu_common::OutputRaw_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fcu_common::OutputRaw_<ContainerAllocator> const> ConstPtr;

}; // struct OutputRaw_

typedef ::fcu_common::OutputRaw_<std::allocator<void> > OutputRaw;

typedef boost::shared_ptr< ::fcu_common::OutputRaw > OutputRawPtr;
typedef boost::shared_ptr< ::fcu_common::OutputRaw const> OutputRawConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fcu_common::OutputRaw_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fcu_common::OutputRaw_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::fcu_common::OutputRaw_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fcu_common::OutputRaw_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fcu_common::OutputRaw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fcu_common::OutputRaw_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fcu_common::OutputRaw_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fcu_common::OutputRaw_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fcu_common::OutputRaw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "08987769c120a488f03d45d098faee86";
  }

  static const char* value(const ::fcu_common::OutputRaw_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x08987769c120a488ULL;
  static const uint64_t static_value2 = 0xf03d45d098faee86ULL;
};

template<class ContainerAllocator>
struct DataType< ::fcu_common::OutputRaw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fcu_common/OutputRaw";
  }

  static const char* value(const ::fcu_common::OutputRaw_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fcu_common::OutputRaw_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# raw servo outputs\n\
\n\
Header header\n\
float32[16] values\n\
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

  static const char* value(const ::fcu_common::OutputRaw_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fcu_common::OutputRaw_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.values);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OutputRaw_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fcu_common::OutputRaw_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fcu_common::OutputRaw_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "values[]" << std::endl;
    for (size_t i = 0; i < v.values.size(); ++i)
    {
      s << indent << "  values[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.values[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // FCU_COMMON_MESSAGE_OUTPUTRAW_H
