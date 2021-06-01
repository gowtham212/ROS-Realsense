; Auto-generated. Do not edit!


(cl:in-package object_detection_2d_msgs-msg)


;//! \htmlinclude DetectedObject2D.msg.html

(cl:defclass <DetectedObject2D> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (polygon
    :reader polygon
    :initarg :polygon
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon)))
)

(cl:defclass DetectedObject2D (<DetectedObject2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DetectedObject2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DetectedObject2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_2d_msgs-msg:<DetectedObject2D> is deprecated: use object_detection_2d_msgs-msg:DetectedObject2D instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <DetectedObject2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_2d_msgs-msg:name-val is deprecated.  Use object_detection_2d_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <DetectedObject2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_2d_msgs-msg:polygon-val is deprecated.  Use object_detection_2d_msgs-msg:polygon instead.")
  (polygon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DetectedObject2D>) ostream)
  "Serializes a message object of type '<DetectedObject2D>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DetectedObject2D>) istream)
  "Deserializes a message object of type '<DetectedObject2D>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DetectedObject2D>)))
  "Returns string type for a message object of type '<DetectedObject2D>"
  "object_detection_2d_msgs/DetectedObject2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DetectedObject2D)))
  "Returns string type for a message object of type 'DetectedObject2D"
  "object_detection_2d_msgs/DetectedObject2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DetectedObject2D>)))
  "Returns md5sum for a message object of type '<DetectedObject2D>"
  "b2f63dab106de6c7cc8886b56346457e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DetectedObject2D)))
  "Returns md5sum for a message object of type 'DetectedObject2D"
  "b2f63dab106de6c7cc8886b56346457e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DetectedObject2D>)))
  "Returns full string definition for message of type '<DetectedObject2D>"
  (cl:format cl:nil "string name~%~%# We use a polygon to represent the location of the object in pixel space.~%# This gives us a very general description of the object and many possibilities~%# for describing the contour of the object.~%# Polygon is also predefined in the geometry_msgs package. We set the~%# z-coordinate of the points in the polygon to zero since we work in pixel~%# space.~%geometry_msgs/Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DetectedObject2D)))
  "Returns full string definition for message of type 'DetectedObject2D"
  (cl:format cl:nil "string name~%~%# We use a polygon to represent the location of the object in pixel space.~%# This gives us a very general description of the object and many possibilities~%# for describing the contour of the object.~%# Polygon is also predefined in the geometry_msgs package. We set the~%# z-coordinate of the points in the polygon to zero since we work in pixel~%# space.~%geometry_msgs/Polygon polygon~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DetectedObject2D>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DetectedObject2D>))
  "Converts a ROS message object to a list"
  (cl:list 'DetectedObject2D
    (cl:cons ':name (name msg))
    (cl:cons ':polygon (polygon msg))
))
