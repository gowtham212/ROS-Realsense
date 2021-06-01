; Auto-generated. Do not edit!


(cl:in-package object_detection_2d_msgs-msg)


;//! \htmlinclude DetectedObject2DArray.msg.html

(cl:defclass <DetectedObject2DArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (objects
    :reader objects
    :initarg :objects
    :type (cl:vector object_detection_2d_msgs-msg:DetectedObject2D)
   :initform (cl:make-array 0 :element-type 'object_detection_2d_msgs-msg:DetectedObject2D :initial-element (cl:make-instance 'object_detection_2d_msgs-msg:DetectedObject2D))))
)

(cl:defclass DetectedObject2DArray (<DetectedObject2DArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObject2DArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObject2DArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_2d_msgs-msg:<DetectedObject2DArray> is deprecated: use object_detection_2d_msgs-msg:DetectedObject2DArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DetectedObject2DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_2d_msgs-msg:header-val is deprecated.  Use object_detection_2d_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'objects-val :lambda-list '(m))
(cl:defmethod objects-val ((m <DetectedObject2DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_2d_msgs-msg:objects-val is deprecated.  Use object_detection_2d_msgs-msg:objects instead.")
  (objects m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObject2DArray>) ostream)
  "Serializes a message object of type '<DetectedObject2DArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'objects))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'objects))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObject2DArray>) istream)
  "Deserializes a message object of type '<DetectedObject2DArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'objects) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'objects)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'object_detection_2d_msgs-msg:DetectedObject2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObject2DArray>)))
  "Returns string type for a message object of type '<DetectedObject2DArray>"
  "object_detection_2d_msgs/DetectedObject2DArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObject2DArray)))
  "Returns string type for a message object of type 'DetectedObject2DArray"
  "object_detection_2d_msgs/DetectedObject2DArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObject2DArray>)))
  "Returns md5sum for a message object of type '<DetectedObject2DArray>"
  "6f000d144a2435e976874e58da56b6a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObject2DArray)))
  "Returns md5sum for a message object of type 'DetectedObject2DArray"
  "6f000d144a2435e976874e58da56b6a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObject2DArray>)))
  "Returns full string definition for message of type '<DetectedObject2DArray>"
  (cl:format cl:nil "std_msgs/Header header~%DetectedObject2D[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: object_detection_2d_msgs/DetectedObject2D~%string name~%~%# We use a polygon to represent the location of the object in pixel space.~%# This gives us a very general description of the object and many possibilities~%# for describing the contour of the object.~%# Polygon is also predefined in the geometry_msgs package. We set the~%# z-coordinate of the points in the polygon to zero since we work in pixel~%# space.~%geometry_msgs/Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObject2DArray)))
  "Returns full string definition for message of type 'DetectedObject2DArray"
  (cl:format cl:nil "std_msgs/Header header~%DetectedObject2D[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: object_detection_2d_msgs/DetectedObject2D~%string name~%~%# We use a polygon to represent the location of the object in pixel space.~%# This gives us a very general description of the object and many possibilities~%# for describing the contour of the object.~%# Polygon is also predefined in the geometry_msgs package. We set the~%# z-coordinate of the points in the polygon to zero since we work in pixel~%# space.~%geometry_msgs/Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObject2DArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'objects) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObject2DArray>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObject2DArray
    (cl:cons ':header (header msg))
    (cl:cons ':objects (objects msg))
))
