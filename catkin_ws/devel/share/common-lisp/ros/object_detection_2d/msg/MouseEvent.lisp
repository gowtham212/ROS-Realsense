; Auto-generated. Do not edit!


(cl:in-package object_detection_2d-msg)


;//! \htmlinclude MouseEvent.msg.html

(cl:defclass <MouseEvent> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (button
    :reader button
    :initarg :button
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type object_detection_2d-msg:Point2D
    :initform (cl:make-instance 'object_detection_2d-msg:Point2D)))
)

(cl:defclass MouseEvent (<MouseEvent>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MouseEvent>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MouseEvent)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name object_detection_2d-msg:<MouseEvent> is deprecated: use object_detection_2d-msg:MouseEvent instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <MouseEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_2d-msg:type-val is deprecated.  Use object_detection_2d-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'button-val :lambda-list '(m))
(cl:defmethod button-val ((m <MouseEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_2d-msg:button-val is deprecated.  Use object_detection_2d-msg:button instead.")
  (button m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <MouseEvent>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader object_detection_2d-msg:position-val is deprecated.  Use object_detection_2d-msg:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MouseEvent>)))
    "Constants for message type '<MouseEvent>"
  '((:PRESS . 0)
    (:MOVE . 1)
    (:RELEASE . 2)
    (:NO_BUTTON . 0)
    (:LEFT_BUTTON . 1)
    (:MIDDLE_BUTTON . 2)
    (:RIGHT_BUTTON . 3)
    (:UNKNOWN_BUTTON . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MouseEvent)))
    "Constants for message type 'MouseEvent"
  '((:PRESS . 0)
    (:MOVE . 1)
    (:RELEASE . 2)
    (:NO_BUTTON . 0)
    (:LEFT_BUTTON . 1)
    (:MIDDLE_BUTTON . 2)
    (:RIGHT_BUTTON . 3)
    (:UNKNOWN_BUTTON . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MouseEvent>) ostream)
  "Serializes a message object of type '<MouseEvent>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MouseEvent>) istream)
  "Deserializes a message object of type '<MouseEvent>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'button)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MouseEvent>)))
  "Returns string type for a message object of type '<MouseEvent>"
  "object_detection_2d/MouseEvent")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MouseEvent)))
  "Returns string type for a message object of type 'MouseEvent"
  "object_detection_2d/MouseEvent")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MouseEvent>)))
  "Returns md5sum for a message object of type '<MouseEvent>"
  "57bba32321c89c59bbda1bc21239af2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MouseEvent)))
  "Returns md5sum for a message object of type 'MouseEvent"
  "57bba32321c89c59bbda1bc21239af2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MouseEvent>)))
  "Returns full string definition for message of type '<MouseEvent>"
  (cl:format cl:nil "# Types.~%uint8 PRESS	= 0~%uint8 MOVE	= 1~%uint8 RELEASE	= 2~%~%# Buttons.~%uint8 NO_BUTTON		= 0~%uint8 LEFT_BUTTON	= 1~%uint8 MIDDLE_BUTTON	= 2~%uint8 RIGHT_BUTTON	= 3~%uint8 UNKNOWN_BUTTON	= 4~%~%uint8 type~%uint8 button	# button that caused the event (== NO_BUTTON for MOVE)~%~%# Mouse position when event was generated.~%object_detection_2d/Point2D position~%~%================================================================================~%MSG: object_detection_2d/Point2D~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MouseEvent)))
  "Returns full string definition for message of type 'MouseEvent"
  (cl:format cl:nil "# Types.~%uint8 PRESS	= 0~%uint8 MOVE	= 1~%uint8 RELEASE	= 2~%~%# Buttons.~%uint8 NO_BUTTON		= 0~%uint8 LEFT_BUTTON	= 1~%uint8 MIDDLE_BUTTON	= 2~%uint8 RIGHT_BUTTON	= 3~%uint8 UNKNOWN_BUTTON	= 4~%~%uint8 type~%uint8 button	# button that caused the event (== NO_BUTTON for MOVE)~%~%# Mouse position when event was generated.~%object_detection_2d/Point2D position~%~%================================================================================~%MSG: object_detection_2d/Point2D~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MouseEvent>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MouseEvent>))
  "Converts a ROS message object to a list"
  (cl:list 'MouseEvent
    (cl:cons ':type (type msg))
    (cl:cons ':button (button msg))
    (cl:cons ':position (position msg))
))
