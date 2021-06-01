// Generated by gencpp from file msgpkg/MyMsg.msg
// DO NOT EDIT!


#ifndef MSGPKG_MESSAGE_MYMSG_H
#define MSGPKG_MESSAGE_MYMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace msgpkg
{
template <class ContainerAllocator>
struct MyMsg_
{
  typedef MyMsg_<ContainerAllocator> Type;

  MyMsg_()
    : first(0)
    , second(0)
    , third(0)
    , text()  {
    }
  MyMsg_(const ContainerAllocator& _alloc)
    : first(0)
    , second(0)
    , third(0)
    , text(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _first_type;
  _first_type first;

   typedef int32_t _second_type;
  _second_type second;

   typedef int32_t _third_type;
  _third_type third;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _text_type;
  _text_type text;





  typedef boost::shared_ptr< ::msgpkg::MyMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::msgpkg::MyMsg_<ContainerAllocator> const> ConstPtr;

}; // struct MyMsg_

typedef ::msgpkg::MyMsg_<std::allocator<void> > MyMsg;

typedef boost::shared_ptr< ::msgpkg::MyMsg > MyMsgPtr;
typedef boost::shared_ptr< ::msgpkg::MyMsg const> MyMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::msgpkg::MyMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::msgpkg::MyMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::msgpkg::MyMsg_<ContainerAllocator1> & lhs, const ::msgpkg::MyMsg_<ContainerAllocator2> & rhs)
{
  return lhs.first == rhs.first &&
    lhs.second == rhs.second &&
    lhs.third == rhs.third &&
    lhs.text == rhs.text;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::msgpkg::MyMsg_<ContainerAllocator1> & lhs, const ::msgpkg::MyMsg_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace msgpkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::msgpkg::MyMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::msgpkg::MyMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgpkg::MyMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::msgpkg::MyMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgpkg::MyMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::msgpkg::MyMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::msgpkg::MyMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9cb9302f78c9ed948d0a985d9594799d";
  }

  static const char* value(const ::msgpkg::MyMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9cb9302f78c9ed94ULL;
  static const uint64_t static_value2 = 0x8d0a985d9594799dULL;
};

template<class ContainerAllocator>
struct DataType< ::msgpkg::MyMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "msgpkg/MyMsg";
  }

  static const char* value(const ::msgpkg::MyMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::msgpkg::MyMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 first\n"
"int32 second\n"
"int32 third\n"
"string text\n"
;
  }

  static const char* value(const ::msgpkg::MyMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::msgpkg::MyMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.first);
      stream.next(m.second);
      stream.next(m.third);
      stream.next(m.text);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MyMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::msgpkg::MyMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::msgpkg::MyMsg_<ContainerAllocator>& v)
  {
    s << indent << "first: ";
    Printer<int32_t>::stream(s, indent + "  ", v.first);
    s << indent << "second: ";
    Printer<int32_t>::stream(s, indent + "  ", v.second);
    s << indent << "third: ";
    Printer<int32_t>::stream(s, indent + "  ", v.third);
    s << indent << "text: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.text);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MSGPKG_MESSAGE_MYMSG_H