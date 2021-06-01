# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "object_detection_3d_msgs: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iobject_detection_3d_msgs:/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(object_detection_3d_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg" NAME_WE)
add_custom_target(_object_detection_3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_detection_3d_msgs" "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg" "object_detection_3d_msgs/OrientedBox:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg" NAME_WE)
add_custom_target(_object_detection_3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_detection_3d_msgs" "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3DArray.msg" NAME_WE)
add_custom_target(_object_detection_3d_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_detection_3d_msgs" "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3DArray.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:object_detection_3d_msgs/OrientedBox:geometry_msgs/Point:object_detection_3d_msgs/DetectedObject3D"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_detection_3d_msgs
)
_generate_msg_cpp(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_detection_3d_msgs
)
_generate_msg_cpp(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_detection_3d_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(object_detection_3d_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_detection_3d_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(object_detection_3d_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(object_detection_3d_msgs_generate_messages object_detection_3d_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_cpp _object_detection_3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_cpp _object_detection_3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3DArray.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_cpp _object_detection_3d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_detection_3d_msgs_gencpp)
add_dependencies(object_detection_3d_msgs_gencpp object_detection_3d_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_detection_3d_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_detection_3d_msgs
)
_generate_msg_eus(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_detection_3d_msgs
)
_generate_msg_eus(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_detection_3d_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(object_detection_3d_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_detection_3d_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(object_detection_3d_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(object_detection_3d_msgs_generate_messages object_detection_3d_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_eus _object_detection_3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_eus _object_detection_3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3DArray.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_eus _object_detection_3d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_detection_3d_msgs_geneus)
add_dependencies(object_detection_3d_msgs_geneus object_detection_3d_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_detection_3d_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_detection_3d_msgs
)
_generate_msg_lisp(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_detection_3d_msgs
)
_generate_msg_lisp(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_detection_3d_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(object_detection_3d_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_detection_3d_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(object_detection_3d_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(object_detection_3d_msgs_generate_messages object_detection_3d_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_lisp _object_detection_3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_lisp _object_detection_3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3DArray.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_lisp _object_detection_3d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_detection_3d_msgs_genlisp)
add_dependencies(object_detection_3d_msgs_genlisp object_detection_3d_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_detection_3d_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_detection_3d_msgs
)
_generate_msg_nodejs(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_detection_3d_msgs
)
_generate_msg_nodejs(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_detection_3d_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(object_detection_3d_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_detection_3d_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(object_detection_3d_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(object_detection_3d_msgs_generate_messages object_detection_3d_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_nodejs _object_detection_3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_nodejs _object_detection_3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3DArray.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_nodejs _object_detection_3d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_detection_3d_msgs_gennodejs)
add_dependencies(object_detection_3d_msgs_gennodejs object_detection_3d_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_detection_3d_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_3d_msgs
)
_generate_msg_py(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3DArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg;/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_3d_msgs
)
_generate_msg_py(object_detection_3d_msgs
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_3d_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(object_detection_3d_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_3d_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(object_detection_3d_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(object_detection_3d_msgs_generate_messages object_detection_3d_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3D.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_py _object_detection_3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/OrientedBox.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_py _object_detection_3d_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_3d_msgs/msg/DetectedObject3DArray.msg" NAME_WE)
add_dependencies(object_detection_3d_msgs_generate_messages_py _object_detection_3d_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_detection_3d_msgs_genpy)
add_dependencies(object_detection_3d_msgs_genpy object_detection_3d_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_detection_3d_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_detection_3d_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_detection_3d_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(object_detection_3d_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(object_detection_3d_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_detection_3d_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_detection_3d_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(object_detection_3d_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(object_detection_3d_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_detection_3d_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_detection_3d_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(object_detection_3d_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(object_detection_3d_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_detection_3d_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_detection_3d_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(object_detection_3d_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(object_detection_3d_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_3d_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_3d_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_3d_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(object_detection_3d_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(object_detection_3d_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
