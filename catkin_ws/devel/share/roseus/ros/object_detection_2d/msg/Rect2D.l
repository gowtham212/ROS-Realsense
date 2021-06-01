;; Auto-generated. Do not edit!


(when (boundp 'object_detection_2d::Rect2D)
  (if (not (find-package "OBJECT_DETECTION_2D"))
    (make-package "OBJECT_DETECTION_2D"))
  (shadow 'Rect2D (find-package "OBJECT_DETECTION_2D")))
(unless (find-package "OBJECT_DETECTION_2D::RECT2D")
  (make-package "OBJECT_DETECTION_2D::RECT2D"))

(in-package "ROS")
;;//! \htmlinclude Rect2D.msg.html


(defclass object_detection_2d::Rect2D
  :super ros::object
  :slots (_upper_left _width _height ))

(defmethod object_detection_2d::Rect2D
  (:init
   (&key
    ((:upper_left __upper_left) (instance object_detection_2d::Point2D :init))
    ((:width __width) 0)
    ((:height __height) 0)
    )
   (send-super :init)
   (setq _upper_left __upper_left)
   (setq _width (round __width))
   (setq _height (round __height))
   self)
  (:upper_left
   (&rest __upper_left)
   (if (keywordp (car __upper_left))
       (send* _upper_left __upper_left)
     (progn
       (if __upper_left (setq _upper_left (car __upper_left)))
       _upper_left)))
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:serialization-length
   ()
   (+
    ;; object_detection_2d/Point2D _upper_left
    (send _upper_left :serialization-length)
    ;; int32 _width
    4
    ;; int32 _height
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; object_detection_2d/Point2D _upper_left
       (send _upper_left :serialize s)
     ;; int32 _width
       (write-long _width s)
     ;; int32 _height
       (write-long _height s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; object_detection_2d/Point2D _upper_left
     (send _upper_left :deserialize buf ptr-) (incf ptr- (send _upper_left :serialization-length))
   ;; int32 _width
     (setq _width (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _height
     (setq _height (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get object_detection_2d::Rect2D :md5sum-) "40f85e4054f7fc5c03f469651a145434")
(setf (get object_detection_2d::Rect2D :datatype-) "object_detection_2d/Rect2D")
(setf (get object_detection_2d::Rect2D :definition-)
      "object_detection_2d/Point2D upper_left

int32 width
int32 height

================================================================================
MSG: object_detection_2d/Point2D
int32 x
int32 y

")



(provide :object_detection_2d/Rect2D "40f85e4054f7fc5c03f469651a145434")


