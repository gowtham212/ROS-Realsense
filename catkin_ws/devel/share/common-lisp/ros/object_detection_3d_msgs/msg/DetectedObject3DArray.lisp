; Auto-generated. Do not edit!


(cl:in-package object_detection_3d_msgs-msg)


;//! \htmlinclude DetectedObject3DArray.msg.html

(cl:defclass <DetectedObject3DArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector object_detection_3d_msgs-msg:DetectedObject3D)
   :initform (cl:make-array 0 :element-type 'object_detection_3d_msgs-msg:DetectedObject3D :initial-element (cl:make-instance 'object_detection_3d_msgs-msg:DetectedObject3D))))
)

(cl:defclass DetectedObject3DArray (<DetectedObject3DArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObject3DArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObject3DArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_3d_msgs-msg:<DetectedObject3DArray> is deprecated: use object_detection_3d_msgs-msg:DetectedObject3DArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectedObject3DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_3d_msgs-msg:header-val is deprecated.  Use object_detection_3d_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <DetectedObject3DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_3d_msgs-msg:objects-val is deprecated.  Use object_detection_3d_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObject3DArray>) ostream)
  "Serializes a message object of type '<DetectedObject3DArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObject3DArray>) istream)
  "Deserializes a message object of type '<DetectedObject3DArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_detection_3d_msgs-msg:DetectedObject3D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObject3DArray>)))
  "Returns string type for a message object of type '<DetectedObject3DArray>"
  "object_detection_3d_msgs/DetectedObject3DArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObject3DArray)))
  "Returns string type for a message object of type 'DetectedObject3DArray"
  "object_detection_3d_msgs/DetectedObject3DArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObject3DArray>)))
  "Returns md5sum for a message object of type '<DetectedObject3DArray>"
  "80c68494d0ddf60329a33fe213c4031f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObject3DArray)))
  "Returns md5sum for a message object of type 'DetectedObject3DArray"
  "80c68494d0ddf60329a33fe213c4031f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObject3DArray>)))
  "Returns full string definition for message of type '<DetectedObject3DArray>"
  (cl:format cl:nil "std_msgs/Header header~%DetectedObject3D[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: object_detection_3d_msgs/DetectedObject3D~%string name~%OrientedBox box~%~%================================================================================~%MSG: object_detection_3d_msgs/OrientedBox~%# Pose = position of centroid of object + orientation of object.~%geometry_msgs/Pose pose~%~%# Dimensions of the box.~%float64 width~%float64 height~%float64 depth~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObject3DArray)))
  "Returns full string definition for message of type 'DetectedObject3DArray"
  (cl:format cl:nil "std_msgs/Header header~%DetectedObject3D[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: object_detection_3d_msgs/DetectedObject3D~%string name~%OrientedBox box~%~%================================================================================~%MSG: object_detection_3d_msgs/OrientedBox~%# Pose = position of centroid of object + orientation of object.~%geometry_msgs/Pose pose~%~%# Dimensions of the box.~%float64 width~%float64 height~%float64 depth~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObject3DArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObject3DArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObject3DArray
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
