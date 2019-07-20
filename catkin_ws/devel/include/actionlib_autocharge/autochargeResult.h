// Generated by gencpp from file actionlib_autocharge/autochargeResult.msg
// DO NOT EDIT!


#ifndef ACTIONLIB_AUTOCHARGE_MESSAGE_AUTOCHARGERESULT_H
#define ACTIONLIB_AUTOCHARGE_MESSAGE_AUTOCHARGERESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace actionlib_autocharge
{
template <class ContainerAllocator>
struct autochargeResult_
{
  typedef autochargeResult_<ContainerAllocator> Type;

  autochargeResult_()
    : final_pose()  {
    }
  autochargeResult_(const ContainerAllocator& _alloc)
    : final_pose(_alloc)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _final_pose_type;
  _final_pose_type final_pose;





  typedef boost::shared_ptr< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> const> ConstPtr;

}; // struct autochargeResult_

typedef ::actionlib_autocharge::autochargeResult_<std::allocator<void> > autochargeResult;

typedef boost::shared_ptr< ::actionlib_autocharge::autochargeResult > autochargeResultPtr;
typedef boost::shared_ptr< ::actionlib_autocharge::autochargeResult const> autochargeResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::actionlib_autocharge::autochargeResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace actionlib_autocharge

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/melodic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'actionlib_autocharge': ['/home/lee/catkin_ws/devel/share/actionlib_autocharge/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "02829f6272cbde592e4d28921cb69852";
  }

  static const char* value(const ::actionlib_autocharge::autochargeResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x02829f6272cbde59ULL;
  static const uint64_t static_value2 = 0x2e4d28921cb69852ULL;
};

template<class ContainerAllocator>
struct DataType< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "actionlib_autocharge/autochargeResult";
  }

  static const char* value(const ::actionlib_autocharge::autochargeResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result defintion\n"
"geometry_msgs/Pose final_pose\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::actionlib_autocharge::autochargeResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.final_pose);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct autochargeResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::actionlib_autocharge::autochargeResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::actionlib_autocharge::autochargeResult_<ContainerAllocator>& v)
  {
    s << indent << "final_pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.final_pose);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACTIONLIB_AUTOCHARGE_MESSAGE_AUTOCHARGERESULT_H