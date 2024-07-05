// Generated by gencpp from file vanjee_msgs/VanjeePacket.msg
// DO NOT EDIT!


#ifndef VANJEE_MSGS_MESSAGE_VANJEEPACKET_H
#define VANJEE_MSGS_MESSAGE_VANJEEPACKET_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace vanjee_msgs
{
template <class ContainerAllocator>
struct VanjeePacket_
{
  typedef VanjeePacket_<ContainerAllocator> Type;

  VanjeePacket_()
    : stamp()
    , data()  {
      data.assign(0);
  }
  VanjeePacket_(const ContainerAllocator& _alloc)
    : stamp()
    , data()  {
  (void)_alloc;
      data.assign(0);
  }



   typedef ros::Time _stamp_type;
  _stamp_type stamp;

   typedef boost::array<uint8_t, 1600>  _data_type;
  _data_type data;





  typedef boost::shared_ptr< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> const> ConstPtr;

}; // struct VanjeePacket_

typedef ::vanjee_msgs::VanjeePacket_<std::allocator<void> > VanjeePacket;

typedef boost::shared_ptr< ::vanjee_msgs::VanjeePacket > VanjeePacketPtr;
typedef boost::shared_ptr< ::vanjee_msgs::VanjeePacket const> VanjeePacketConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vanjee_msgs::VanjeePacket_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::vanjee_msgs::VanjeePacket_<ContainerAllocator1> & lhs, const ::vanjee_msgs::VanjeePacket_<ContainerAllocator2> & rhs)
{
  return lhs.stamp == rhs.stamp &&
    lhs.data == rhs.data;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::vanjee_msgs::VanjeePacket_<ContainerAllocator1> & lhs, const ::vanjee_msgs::VanjeePacket_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace vanjee_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7bc56c25fd50cf560d1cac8668884c5d";
  }

  static const char* value(const ::vanjee_msgs::VanjeePacket_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7bc56c25fd50cf56ULL;
  static const uint64_t static_value2 = 0x0d1cac8668884c5dULL;
};

template<class ContainerAllocator>
struct DataType< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vanjee_msgs/VanjeePacket";
  }

  static const char* value(const ::vanjee_msgs::VanjeePacket_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Raw vanjee LIDAR packet.\n"
"\n"
"time stamp              # packet timestamp\n"
"uint8[1600] data        # packet contents\n"
"\n"
;
  }

  static const char* value(const ::vanjee_msgs::VanjeePacket_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stamp);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct VanjeePacket_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vanjee_msgs::VanjeePacket_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vanjee_msgs::VanjeePacket_<ContainerAllocator>& v)
  {
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // VANJEE_MSGS_MESSAGE_VANJEEPACKET_H