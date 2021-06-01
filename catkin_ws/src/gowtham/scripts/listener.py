#!/usr/bin/env python
import rospy
from msgpkg.msg import MyMsg

def callback(data):
    rospy.loginfo(rospy.get_caller_id() + 'I received integer %d + %d = %d', data.first,data.second,data.third)
    rospy.loginfo(rospy.get_caller_id() + 'I received operation string %s', data.text)

def listener():

    rospy.init_node('listener', anonymous=True)

    rospy.Subscriber('addition', MyMsg, callback)

    rospy.spin()

if __name__ == '__main__':
    listener()