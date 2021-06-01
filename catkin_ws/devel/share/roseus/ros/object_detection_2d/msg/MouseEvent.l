;; Auto-generated. Do not edit!


(when (boundp 'object_detection_2d::MouseEvent)
  (if (not (find-package "OBJECT_DETECTION_2D"))
    (make-package "OBJECT_DETECTION_2D"))
  (shadow 'MouseEvent (find-package "OBJECT_DETECTION_2D")))
(unless (find-package "OBJECT_DETECTION_2D::MOUSEEVENT")
  (make-package "OBJECT_DETECTION_2D::MOUSEEVENT"))

(in-package "ROS")
;;//! \htmlinclude MouseEvent.msg.html


(intern "*PRESS*" (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(shadow '*PRESS* (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(defconstant object_detection_2d::MouseEvent::*PRESS* 0)
(intern "*MOVE*" (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(shadow '*MOVE* (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(defconstant object_detection_2d::MouseEvent::*MOVE* 1)
(intern "*RELEASE*" (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(shadow '*RELEASE* (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(defconstant object_detection_2d::MouseEvent::*RELEASE* 2)
(intern "*NO_BUTTON*" (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(shadow '*NO_BUTTON* (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(defconstant object_detection_2d::MouseEvent::*NO_BUTTON* 0)
(intern "*LEFT_BUTTON*" (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(shadow '*LEFT_BUTTON* (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(defconstant object_detection_2d::MouseEvent::*LEFT_BUTTON* 1)
(intern "*MIDDLE_BUTTON*" (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(shadow '*MIDDLE_BUTTON* (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(defconstant object_detection_2d::MouseEvent::*MIDDLE_BUTTON* 2)
(intern "*RIGHT_BUTTON*" (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(shadow '*RIGHT_BUTTON* (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(defconstant object_detection_2d::MouseEvent::*RIGHT_BUTTON* 3)
(intern "*UNKNOWN_BUTTON*" (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(shadow '*UNKNOWN_BUTTON* (find-package "OBJECT_DETECTION_2D::MOUSEEVENT"))
(defconstant object_detection_2d::MouseEvent::*UNKNOWN_BUTTON* 4)
(defclass object_detection_2d::MouseEvent
  :super ros::object
  :slots (_type _button _position ))

(defmethod object_detection_2d::MouseEvent
  (:init
   (&key
    ((:type __type) 0)
    ((:button __button) 0)
    ((:position __position) (instance object_detection_2d::Point2D :init))
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _button (round __button))
   (setq _position __position)
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:button
   (&optional __button)
   (if __button (setq _button __button)) _button)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; uint8 _button
    1
    ;; object_detection_2d/Point2D _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; uint8 _button
       (write-byte _button s)
     ;; object_detection_2d/Point2D _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _button
     (setq _button (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; object_detection_2d/Point2D _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(setf (get object_detection_2d::MouseEvent :md5sum-) "57bba32321c89c59bbda1bc21239af2c")
(setf (get object_detection_2d::MouseEvent :datatype-) "object_detection_2d/MouseEvent")
(setf (get object_detection_2d::MouseEvent :definition-)
      "# Types.
uint8 PRESS	= 0
uint8 MOVE	= 1
uint8 RELEASE	= 2

# Buttons.
uint8 NO_BUTTON		= 0
uint8 LEFT_BUTTON	= 1
uint8 MIDDLE_BUTTON	= 2
uint8 RIGHT_BUTTON	= 3
uint8 UNKNOWN_BUTTON	= 4

uint8 type
uint8 button	# button that caused the event (== NO_BUTTON for MOVE)

# Mouse position when event was generated.
object_detection_2d/Point2D position

================================================================================
MSG: object_detection_2d/Point2D
int32 x
int32 y

")



(provide :object_detection_2d/MouseEvent "57bba32321c89c59bbda1bc21239af2c")


