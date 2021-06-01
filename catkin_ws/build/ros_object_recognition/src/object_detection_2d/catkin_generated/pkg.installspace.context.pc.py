# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/opt/ros/melodic/include;/opt/ros/melodic/share/xmlrpcpp/cmake/../../../include/xmlrpcpp;/usr/include;/usr/include/opencv".split(';') if "${prefix}/include;/opt/ros/melodic/include;/opt/ros/melodic/share/xmlrpcpp/cmake/../../../include/xmlrpcpp;/usr/include;/usr/include/opencv" != "" else []
PROJECT_CATKIN_DEPENDS = "cv_bridge;roscpp;sensor_msgs;object_detection_2d_msgs;message_runtime".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lobject_detection_2d".split(';') if "-lobject_detection_2d" != "" else []
PROJECT_NAME = "object_detection_2d"
PROJECT_SPACE_DIR = "/home/bit/catkin_ws/install"
PROJECT_VERSION = "0.0.0"
