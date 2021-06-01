;; Auto-generated. Do not edit!


(when (boundp 'object_detection_2d::Point2D)
  (if (not (find-package "OBJECT_DETECTION_2D"))
    (make-package "OBJECT_DETECTION_2D"))
  (shadow 'Point2D (find-package "OBJECT_DETECTION_2D")))
(unless (find-package "OBJECT_DETECTION_2D::POINT2D")
  (make-package "OBJECT_DETECTION_2D::POINT2D"))

(in-package "ROS")
;;//! \htmlinclude Point2D.msg.html


(defclass object_detection_2d::Point2D
  :super ros::object
  :slots (_x _y ))

(defmethod object_detection_2d::Point2D
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _x
    4
    ;; int32 _y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _x
       (write-long _x s)
     ;; int32 _y
       (write-long _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _x
     (setq _x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _y
     (setq _y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get object_detection_2d::Point2D :md5sum-) "bd7b43fd41d4c47bf5c703cc7d016709")
(setf (get object_detection_2d::Point2D :datatype-) "object_detection_2d/Point2D")
(setf (get object_detection_2d::Point2D :definition-)
      "int32 x
int32 y

")



(provide :object_detection_2d/Point2D "bd7b43fd41d4c47bf5c703cc7d016709")


