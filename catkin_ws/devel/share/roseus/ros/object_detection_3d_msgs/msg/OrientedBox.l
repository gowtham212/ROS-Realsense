;; Auto-generated. Do not edit!


(when (boundp 'object_detection_3d_msgs::OrientedBox)
  (if (not (find-package "OBJECT_DETECTION_3D_MSGS"))
    (make-package "OBJECT_DETECTION_3D_MSGS"))
  (shadow 'OrientedBox (find-package "OBJECT_DETECTION_3D_MSGS")))
(unless (find-package "OBJECT_DETECTION_3D_MSGS::ORIENTEDBOX")
  (make-package "OBJECT_DETECTION_3D_MSGS::ORIENTEDBOX"))

(in-package "ROS")
;;//! \htmlinclude OrientedBox.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass object_detection_3d_msgs::OrientedBox
  :super ros::object
  :slots (_pose _width _height _depth ))

(defmethod object_detection_3d_msgs::OrientedBox
  (:init
   (&key
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:width __width) 0.0)
    ((:height __height) 0.0)
    ((:depth __depth) 0.0)
    )
   (send-super :init)
   (setq _pose __pose)
   (setq _width (float __width))
   (setq _height (float __height))
   (setq _depth (float __depth))
   self)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; float64 _width
    8
    ;; float64 _height
    8
    ;; float64 _depth
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; float64 _width
       (sys::poke _width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _height
       (sys::poke _height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _width
     (setq _width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _height
     (setq _height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _depth
     (setq _depth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get object_detection_3d_msgs::OrientedBox :md5sum-) "6ce22cd7086d70da99d06b077ba9817e")
(setf (get object_detection_3d_msgs::OrientedBox :datatype-) "object_detection_3d_msgs/OrientedBox")
(setf (get object_detection_3d_msgs::OrientedBox :definition-)
      "# Pose = position of centroid of object + orientation of object.
geometry_msgs/Pose pose

# Dimensions of the box.
float64 width
float64 height
float64 depth

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :object_detection_3d_msgs/OrientedBox "6ce22cd7086d70da99d06b077ba9817e")


