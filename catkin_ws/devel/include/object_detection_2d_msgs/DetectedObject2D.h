// Generated by gencpp from file object_detection_2d_msgs/DetectedObject2D.msg
// DO NOT EDIT!


#ifndef OBJECT_DETECTION_2D_MSGS_MESSAGE_DETECTEDOBJECT2D_H
#define OBJECT_DETECTION_2D_MSGS_MESSAGE_DETECTEDOBJECT2D_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Polygon.h>

namespace object_detection_2d_msgs
{
template <class ContainerAllocator>
struct DetectedObject2D_
{
  typedef DetectedObject2D_<ContainerAllocator> Type;

  DetectedObject2D_()
    : name()
    , polygon()  {
    }
  DetectedObject2D_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , polygon(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef  ::geometry_msgs::Polygon_<ContainerAllocator>  _polygon_type;
  _polygon_type polygon;





  typedef boost::shared_ptr< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> const> ConstPtr;

}; // struct DetectedObject2D_

typedef ::object_detection_2d_msgs::DetectedObject2D_<std::allocator<void> > DetectedObject2D;

typedef boost::shared_ptr< ::object_detection_2d_msgs::DetectedObject2D > DetectedObject2DPtr;
typedef boost::shared_ptr< ::object_detection_2d_msgs::DetectedObject2D const> DetectedObject2DConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator1> & lhs, const ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.polygon == rhs.polygon;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator1> & lhs, const ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace object_detection_2d_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b2f63dab106de6c7cc8886b56346457e";
  }

  static const char* value(const ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb2f63dab106de6c7ULL;
  static const uint64_t static_value2 = 0xcc8886b56346457eULL;
};

template<class ContainerAllocator>
struct DataType< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "object_detection_2d_msgs/DetectedObject2D";
  }

  static const char* value(const ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n"
"\n"
"# We use a polygon to represent the location of the object in pixel space.\n"
"# This gives us a very general description of the object and many possibilities\n"
"# for describing the contour of the object.\n"
"# Polygon is also predefined in the geometry_msgs package. We set the\n"
"# z-coordinate of the points in the polygon to zero since we work in pixel\n"
"# space.\n"
"geometry_msgs/Polygon polygon\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Polygon\n"
"#A specification of a polygon where the first and last points are assumed to be connected\n"
"Point32[] points\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point32\n"
"# This contains the position of a point in free space(with 32 bits of precision).\n"
"# It is recommeded to use Point wherever possible instead of Point32.  \n"
"# \n"
"# This recommendation is to promote interoperability.  \n"
"#\n"
"# This message is designed to take up less space when sending\n"
"# lots of points at once, as in the case of a PointCloud.  \n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
;
  }

  static const char* value(const ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.polygon);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DetectedObject2D_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::object_detection_2d_msgs::DetectedObject2D_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "polygon: ";
    s << std::endl;
    Printer< ::geometry_msgs::Polygon_<ContainerAllocator> >::stream(s, indent + "  ", v.polygon);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OBJECT_DETECTION_2D_MSGS_MESSAGE_DETECTEDOBJECT2D_H
