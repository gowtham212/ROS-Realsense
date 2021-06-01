; Auto-generated. Do not edit!


(cl:in-package object_detection_2d-msg)


;//! \htmlinclude Rect2D.msg.html

(cl:defclass <Rect2D> (roslisp-msg-protocol:ros-message)
  ((upper_left
    :reader upper_left
    :initarg :upper_left
    :type object_detection_2d-msg:Point2D
    :initform (cl:make-instance 'object_detection_2d-msg:Point2D))
   (width
    :reader width
    :initarg :width
    :type cl:integer
    :initform 0)
   (height
    :reader height
    :initarg :height
    :type cl:integer
    :initform 0))
)

(cl:defclass Rect2D (<Rect2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rect2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rect2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_2d-msg:<Rect2D> is deprecated: use object_detection_2d-msg:Rect2D instead.")))

(cl:ensure-generic-function 'upper_left-val :lambda-list '(m))
(cl:defmethod upper_left-val ((m <Rect2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_2d-msg:upper_left-val is deprecated.  Use object_detection_2d-msg:upper_left instead.")
  (upper_left m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <Rect2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_2d-msg:width-val is deprecated.  Use object_detection_2d-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'height-val :lambda-list '(m))
(cl:defmethod height-val ((m <Rect2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_2d-msg:height-val is deprecated.  Use object_detection_2d-msg:height instead.")
  (height m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rect2D>) ostream)
  "Serializes a message object of type '<Rect2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'upper_left) ostream)
  (cl:let* ((signed (cl:slot-value msg 'width)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'height)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rect2D>) istream)
  "Deserializes a message object of type '<Rect2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'upper_left) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'width) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'height) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rect2D>)))
  "Returns string type for a message object of type '<Rect2D>"
  "object_detection_2d/Rect2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rect2D)))
  "Returns string type for a message object of type 'Rect2D"
  "object_detection_2d/Rect2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rect2D>)))
  "Returns md5sum for a message object of type '<Rect2D>"
  "40f85e4054f7fc5c03f469651a145434")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rect2D)))
  "Returns md5sum for a message object of type 'Rect2D"
  "40f85e4054f7fc5c03f469651a145434")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rect2D>)))
  "Returns full string definition for message of type '<Rect2D>"
  (cl:format cl:nil "object_detection_2d/Point2D upper_left~%~%int32 width~%int32 height~%~%================================================================================~%MSG: object_detection_2d/Point2D~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rect2D)))
  "Returns full string definition for message of type 'Rect2D"
  (cl:format cl:nil "object_detection_2d/Point2D upper_left~%~%int32 width~%int32 height~%~%================================================================================~%MSG: object_detection_2d/Point2D~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rect2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'upper_left))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rect2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Rect2D
    (cl:cons ':upper_left (upper_left msg))
    (cl:cons ':width (width msg))
    (cl:cons ':height (height msg))
))
