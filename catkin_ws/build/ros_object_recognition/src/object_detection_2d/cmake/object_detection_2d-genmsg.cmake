# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "object_detection_2d: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iobject_detection_2d:/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(object_detection_2d_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg" NAME_WE)
add_custom_target(_object_detection_2d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_detection_2d" "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg" ""
)

get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Rect2D.msg" NAME_WE)
add_custom_target(_object_detection_2d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_detection_2d" "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Rect2D.msg" "object_detection_2d/Point2D"
)

get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/MouseEvent.msg" NAME_WE)
add_custom_target(_object_detection_2d_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "object_detection_2d" "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/MouseEvent.msg" "object_detection_2d/Point2D"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_detection_2d
)
_generate_msg_cpp(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Rect2D.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_detection_2d
)
_generate_msg_cpp(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/MouseEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_detection_2d
)

### Generating Services

### Generating Module File
_generate_module_cpp(object_detection_2d
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_detection_2d
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(object_detection_2d_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(object_detection_2d_generate_messages object_detection_2d_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_cpp _object_detection_2d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Rect2D.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_cpp _object_detection_2d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/MouseEvent.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_cpp _object_detection_2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_detection_2d_gencpp)
add_dependencies(object_detection_2d_gencpp object_detection_2d_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_detection_2d_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_detection_2d
)
_generate_msg_eus(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Rect2D.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_detection_2d
)
_generate_msg_eus(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/MouseEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_detection_2d
)

### Generating Services

### Generating Module File
_generate_module_eus(object_detection_2d
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_detection_2d
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(object_detection_2d_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(object_detection_2d_generate_messages object_detection_2d_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_eus _object_detection_2d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Rect2D.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_eus _object_detection_2d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/MouseEvent.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_eus _object_detection_2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_detection_2d_geneus)
add_dependencies(object_detection_2d_geneus object_detection_2d_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_detection_2d_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_detection_2d
)
_generate_msg_lisp(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Rect2D.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_detection_2d
)
_generate_msg_lisp(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/MouseEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_detection_2d
)

### Generating Services

### Generating Module File
_generate_module_lisp(object_detection_2d
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_detection_2d
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(object_detection_2d_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(object_detection_2d_generate_messages object_detection_2d_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_lisp _object_detection_2d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Rect2D.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_lisp _object_detection_2d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/MouseEvent.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_lisp _object_detection_2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_detection_2d_genlisp)
add_dependencies(object_detection_2d_genlisp object_detection_2d_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_detection_2d_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_detection_2d
)
_generate_msg_nodejs(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Rect2D.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_detection_2d
)
_generate_msg_nodejs(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/MouseEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_detection_2d
)

### Generating Services

### Generating Module File
_generate_module_nodejs(object_detection_2d
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_detection_2d
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(object_detection_2d_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(object_detection_2d_generate_messages object_detection_2d_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_nodejs _object_detection_2d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Rect2D.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_nodejs _object_detection_2d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/MouseEvent.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_nodejs _object_detection_2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_detection_2d_gennodejs)
add_dependencies(object_detection_2d_gennodejs object_detection_2d_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_detection_2d_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_2d
)
_generate_msg_py(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Rect2D.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_2d
)
_generate_msg_py(object_detection_2d
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/MouseEvent.msg"
  "${MSG_I_FLAGS}"
  "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_2d
)

### Generating Services

### Generating Module File
_generate_module_py(object_detection_2d
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_2d
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(object_detection_2d_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(object_detection_2d_generate_messages object_detection_2d_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Point2D.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_py _object_detection_2d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/Rect2D.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_py _object_detection_2d_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/bit/catkin_ws/src/ros_object_recognition/src/object_detection_2d/msg/MouseEvent.msg" NAME_WE)
add_dependencies(object_detection_2d_generate_messages_py _object_detection_2d_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(object_detection_2d_genpy)
add_dependencies(object_detection_2d_genpy object_detection_2d_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS object_detection_2d_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_detection_2d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/object_detection_2d
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_detection_2d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/object_detection_2d
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_detection_2d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/object_detection_2d
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_detection_2d)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/object_detection_2d
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_2d)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_2d\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/object_detection_2d
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
