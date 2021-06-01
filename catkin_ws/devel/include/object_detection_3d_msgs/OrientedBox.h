// Generated by gencpp from file object_detection_3d_msgs/OrientedBox.msg
// DO NOT EDIT!


#ifndef OBJECT_DETECTION_3D_MSGS_MESSAGE_ORIENTEDBOX_H
#define OBJECT_DETECTION_3D_MSGS_MESSAGE_ORIENTEDBOX_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace object_detection_3d_msgs
{
template <class ContainerAllocator>
struct OrientedBox_
{
  typedef OrientedBox_<ContainerAllocator> Type;

  OrientedBox_()
    : pose()
    , width(0.0)
    , height(0.0)
    , depth(0.0)  {
    }
  OrientedBox_(const ContainerAllocator& _alloc)
    : pose(_alloc)
    , width(0.0)
    , height(0.0)
    , depth(0.0)  {
  (void)_alloc;
    }



   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pose_type;
  _pose_type pose;

   typedef double _width_type;
  _width_type width;

   typedef double _height_type;
  _height_type height;

   typedef double _depth_type;
  _depth_type depth;





  typedef boost::shared_ptr< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> const> ConstPtr;

}; // struct OrientedBox_

typedef ::object_detection_3d_msgs::OrientedBox_<std::allocator<void> > OrientedBox;

typedef boost::shared_ptr< ::object_detection_3d_msgs::OrientedBox > OrientedBoxPtr;
typedef boost::shared_ptr< ::object_detection_3d_msgs::OrientedBox const> OrientedBoxConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator1> & lhs, const ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator2> & rhs)
{
  return lhs.pose == rhs.pose &&
    lhs.width == rhs.width &&
    lhs.height == rhs.height &&
    lhs.depth == rhs.depth;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator1> & lhs, const ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace object_detection_3d_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6ce22cd7086d70da99d06b077ba9817e";
  }

  static const char* value(const ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6ce22cd7086d70daULL;
  static const uint64_t static_value2 = 0x99d06b077ba9817eULL;
};

template<class ContainerAllocator>
struct DataType< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_detection_3d_msgs/OrientedBox";
  }

  static const char* value(const ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Pose = position of centroid of object + orientation of object.\n"
"geometry_msgs/Pose pose\n"
"\n"
"# Dimensions of the box.\n"
"float64 width\n"
"float64 height\n"
"float64 depth\n"
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

  static const char* value(const ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pose);
      stream.next(m.width);
      stream.next(m.height);
      stream.next(m.depth);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct OrientedBox_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_detection_3d_msgs::OrientedBox_<ContainerAllocator>& v)
  {
    s << indent << "pose: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pose);
    s << indent << "width: ";
    Printer<double>::stream(s, indent + "  ", v.width);
    s << indent << "height: ";
    Printer<double>::stream(s, indent + "  ", v.height);
    s << indent << "depth: ";
    Printer<double>::stream(s, indent + "  ", v.depth);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_DETECTION_3D_MSGS_MESSAGE_ORIENTEDBOX_H
