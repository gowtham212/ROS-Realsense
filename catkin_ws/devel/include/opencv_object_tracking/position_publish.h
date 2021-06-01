// Generated by gencpp from file opencv_object_tracking/position_publish.msg
// DO NOT EDIT!


#ifndef OPENCV_OBJECT_TRACKING_MESSAGE_POSITION_PUBLISH_H
#define OPENCV_OBJECT_TRACKING_MESSAGE_POSITION_PUBLISH_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Point.h>

namespace opencv_object_tracking
{
template <class ContainerAllocator>
struct position_publish_
{
  typedef position_publish_<ContainerAllocator> Type;

  position_publish_()
    : Position_XYZ()
    , center_pixel_x(0)
    , center_pixel_y(0)
    , counter(0)  {
    }
  position_publish_(const ContainerAllocator& _alloc)
    : Position_XYZ(_alloc)
    , center_pixel_x(0)
    , center_pixel_y(0)
    , counter(0)  {
  (void)_alloc;
    }



   typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _Position_XYZ_type;
  _Position_XYZ_type Position_XYZ;

   typedef uint16_t _center_pixel_x_type;
  _center_pixel_x_type center_pixel_x;

   typedef uint16_t _center_pixel_y_type;
  _center_pixel_y_type center_pixel_y;

   typedef uint8_t _counter_type;
  _counter_type counter;





  typedef boost::shared_ptr< ::opencv_object_tracking::position_publish_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::opencv_object_tracking::position_publish_<ContainerAllocator> const> ConstPtr;

}; // struct position_publish_

typedef ::opencv_object_tracking::position_publish_<std::allocator<void> > position_publish;

typedef boost::shared_ptr< ::opencv_object_tracking::position_publish > position_publishPtr;
typedef boost::shared_ptr< ::opencv_object_tracking::position_publish const> position_publishConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::opencv_object_tracking::position_publish_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::opencv_object_tracking::position_publish_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::opencv_object_tracking::position_publish_<ContainerAllocator1> & lhs, const ::opencv_object_tracking::position_publish_<ContainerAllocator2> & rhs)
{
  return lhs.Position_XYZ == rhs.Position_XYZ &&
    lhs.center_pixel_x == rhs.center_pixel_x &&
    lhs.center_pixel_y == rhs.center_pixel_y &&
    lhs.counter == rhs.counter;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::opencv_object_tracking::position_publish_<ContainerAllocator1> & lhs, const ::opencv_object_tracking::position_publish_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace opencv_object_tracking

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::opencv_object_tracking::position_publish_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::opencv_object_tracking::position_publish_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_object_tracking::position_publish_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::opencv_object_tracking::position_publish_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_object_tracking::position_publish_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::opencv_object_tracking::position_publish_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::opencv_object_tracking::position_publish_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6fff6255329776d371aac32c4bd148c0";
  }

  static const char* value(const ::opencv_object_tracking::position_publish_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6fff6255329776d3ULL;
  static const uint64_t static_value2 = 0x71aac32c4bd148c0ULL;
};

template<class ContainerAllocator>
struct DataType< ::opencv_object_tracking::position_publish_<ContainerAllocator> >
{
  static const char* value()
  {
    return "opencv_object_tracking/position_publish";
  }

  static const char* value(const ::opencv_object_tracking::position_publish_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::opencv_object_tracking::position_publish_<ContainerAllocator> >
{
  static const char* value()
  {
    return "geometry_msgs/Point[] Position_XYZ\n"
"uint16 center_pixel_x\n"
"uint16 center_pixel_y\n"
"uint8 counter\n"
"\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::opencv_object_tracking::position_publish_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::opencv_object_tracking::position_publish_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Position_XYZ);
      stream.next(m.center_pixel_x);
      stream.next(m.center_pixel_y);
      stream.next(m.counter);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct position_publish_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::opencv_object_tracking::position_publish_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::opencv_object_tracking::position_publish_<ContainerAllocator>& v)
  {
    s << indent << "Position_XYZ[]" << std::endl;
    for (size_t i = 0; i < v.Position_XYZ.size(); ++i)
    {
      s << indent << "  Position_XYZ[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.Position_XYZ[i]);
    }
    s << indent << "center_pixel_x: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.center_pixel_x);
    s << indent << "center_pixel_y: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.center_pixel_y);
    s << indent << "counter: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.counter);
  }
};

} // namespace message_operations
} // namespace ros

#endif // OPENCV_OBJECT_TRACKING_MESSAGE_POSITION_PUBLISH_H