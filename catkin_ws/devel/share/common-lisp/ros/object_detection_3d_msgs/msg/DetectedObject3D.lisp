; Auto-generated. Do not edit!


(cl:in-package object_detection_3d_msgs-msg)


;//! \htmlinclude DetectedObject3D.msg.html

(cl:defclass <DetectedObject3D> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (box
    :reader box
    :initarg :box
    :type object_detection_3d_msgs-msg:OrientedBox
    :initform (cl:make-instance 'object_detection_3d_msgs-msg:OrientedBox)))
)

(cl:defclass DetectedObject3D (<DetectedObject3D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObject3D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObject3D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_3d_msgs-msg:<DetectedObject3D> is deprecated: use object_detection_3d_msgs-msg:DetectedObject3D instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DetectedObject3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_3d_msgs-msg:name-val is deprecated.  Use object_detection_3d_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'box-val :lambda-list '(m))
(cl:defmethod box-val ((m <DetectedObject3D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_3d_msgs-msg:box-val is deprecated.  Use object_detection_3d_msgs-msg:box instead.")
  (box m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObject3D>) ostream)
  "Serializes a message object of type '<DetectedObject3D>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'box) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObject3D>) istream)
  "Deserializes a message object of type '<DetectedObject3D>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'box) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObject3D>)))
  "Returns string type for a message object of type '<DetectedObject3D>"
  "object_detection_3d_msgs/DetectedObject3D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObject3D)))
  "Returns string type for a message object of type 'DetectedObject3D"
  "object_detection_3d_msgs/DetectedObject3D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObject3D>)))
  "Returns md5sum for a message object of type '<DetectedObject3D>"
  "313c73372cba8ca3b40d40c0f7d90ff3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObject3D)))
  "Returns md5sum for a message object of type 'DetectedObject3D"
  "313c73372cba8ca3b40d40c0f7d90ff3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObject3D>)))
  "Returns full string definition for message of type '<DetectedObject3D>"
  (cl:format cl:nil "string name~%OrientedBox box~%~%================================================================================~%MSG: object_detection_3d_msgs/OrientedBox~%# Pose = position of centroid of object + orientation of object.~%geometry_msgs/Pose pose~%~%# Dimensions of the box.~%float64 width~%float64 height~%float64 depth~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObject3D)))
  "Returns full string definition for message of type 'DetectedObject3D"
  (cl:format cl:nil "string name~%OrientedBox box~%~%================================================================================~%MSG: object_detection_3d_msgs/OrientedBox~%# Pose = position of centroid of object + orientation of object.~%geometry_msgs/Pose pose~%~%# Dimensions of the box.~%float64 width~%float64 height~%float64 depth~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObject3D>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'box))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObject3D>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObject3D
    (cl:cons ':name (name msg))
    (cl:cons ':box (box msg))
))
