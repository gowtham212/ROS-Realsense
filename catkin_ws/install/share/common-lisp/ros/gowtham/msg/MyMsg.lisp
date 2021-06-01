; Auto-generated. Do not edit!


(cl:in-package gowtham-msg)


;//! \htmlinclude MyMsg.msg.html

(cl:defclass <MyMsg> (roslisp-msg-protocol:ros-message)
  ((first
    :reader first
    :initarg :first
    :type cl:integer
    :initform 0)
   (second
    :reader second
    :initarg :second
    :type cl:integer
    :initform 0)
   (third
    :reader third
    :initarg :third
    :type cl:integer
    :initform 0)
   (text
    :reader text
    :initarg :text
    :type cl:string
    :initform ""))
)

(cl:defclass MyMsg (<MyMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MyMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MyMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gowtham-msg:<MyMsg> is deprecated: use gowtham-msg:MyMsg instead.")))

(cl:ensure-generic-function 'first-val :lambda-list '(m))
(cl:defmethod first-val ((m <MyMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gowtham-msg:first-val is deprecated.  Use gowtham-msg:first instead.")
  (first m))

(cl:ensure-generic-function 'second-val :lambda-list '(m))
(cl:defmethod second-val ((m <MyMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gowtham-msg:second-val is deprecated.  Use gowtham-msg:second instead.")
  (second m))

(cl:ensure-generic-function 'third-val :lambda-list '(m))
(cl:defmethod third-val ((m <MyMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gowtham-msg:third-val is deprecated.  Use gowtham-msg:third instead.")
  (third m))

(cl:ensure-generic-function 'text-val :lambda-list '(m))
(cl:defmethod text-val ((m <MyMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gowtham-msg:text-val is deprecated.  Use gowtham-msg:text instead.")
  (text m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MyMsg>) ostream)
  "Serializes a message object of type '<MyMsg>"
  (cl:let* ((signed (cl:slot-value msg 'first)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'second)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'third)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'text))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'text))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MyMsg>) istream)
  "Deserializes a message object of type '<MyMsg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'first) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'second) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'third) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'text) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'text) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MyMsg>)))
  "Returns string type for a message object of type '<MyMsg>"
  "gowtham/MyMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MyMsg)))
  "Returns string type for a message object of type 'MyMsg"
  "gowtham/MyMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MyMsg>)))
  "Returns md5sum for a message object of type '<MyMsg>"
  "9cb9302f78c9ed948d0a985d9594799d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MyMsg)))
  "Returns md5sum for a message object of type 'MyMsg"
  "9cb9302f78c9ed948d0a985d9594799d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MyMsg>)))
  "Returns full string definition for message of type '<MyMsg>"
  (cl:format cl:nil "int32 first~%int32 second~%int32 third~%string text~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MyMsg)))
  "Returns full string definition for message of type 'MyMsg"
  (cl:format cl:nil "int32 first~%int32 second~%int32 third~%string text~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MyMsg>))
  (cl:+ 0
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'text))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MyMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MyMsg
    (cl:cons ':first (first msg))
    (cl:cons ':second (second msg))
    (cl:cons ':third (third msg))
    (cl:cons ':text (text msg))
))
