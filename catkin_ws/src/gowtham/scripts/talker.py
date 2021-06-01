#!/usr/bin/env python
#license removed for brevity
import rospy
from msgpkg.msg import MyMsg

def talker():
    pub = rospy.Publisher('addition', MyMsg, queue_size=10)
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(0.5) # 10hz
    a=1
    b=2
    while not rospy.is_shutdown():
        result = a+b
        text = str(a)+'+'+str(b)+'='+str(result)
        message = MyMsg(first=a,second=b,third=result,text=text)
        #rospy.loginfo(message)
        pub.publish(message)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass