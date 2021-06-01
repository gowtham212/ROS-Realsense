;; Auto-generated. Do not edit!


(when (boundp 'object_detection_3d_msgs::DetectedObject3D)
  (if (not (find-package "OBJECT_DETECTION_3D_MSGS"))
    (make-package "OBJECT_DETECTION_3D_MSGS"))
  (shadow 'DetectedObject3D (find-package "OBJECT_DETECTION_3D_MSGS")))
(unless (find-package "OBJECT_DETECTION_3D_MSGS::DETECTEDOBJECT3D")
  (make-package "OBJECT_DETECTION_3D_MSGS::DETECTEDOBJECT3D"))

(in-package "ROS")
;;//! \htmlinclude DetectedObject3D.msg.html


(defclass object_detection_3d_msgs::DetectedObject3D
  :super ros::object
  :slots (_name _box ))

(defmethod object_detection_3d_msgs::DetectedObject3D
  (:init
   (&key
    ((:name __name) "")
    ((:box __box) (instance object_detection_3d_msgs::OrientedBox :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _box __box)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:box
   (&rest __box)
   (if (keywordp (car __box))
       (send* _box __box)
     (progn
       (if __box (setq _box (car __box)))
       _box)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; object_detection_3d_msgs/OrientedBox _box
    (send _box :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; object_detection_3d_msgs/OrientedBox _box
       (send _box :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; object_detection_3d_msgs/OrientedBox _box
     (send _box :deserialize buf ptr-) (incf ptr- (send _box :serialization-length))
   ;;
   self)
  )

(setf (get object_detection_3d_msgs::DetectedObject3D :md5sum-) "313c73372cba8ca3b40d40c0f7d90ff3")
(setf (get object_detection_3d_msgs::DetectedObject3D :datatype-) "object_detection_3d_msgs/DetectedObject3D")
(setf (get object_detection_3d_msgs::DetectedObject3D :definition-)
      "string name
OrientedBox box

================================================================================
MSG: object_detection_3d_msgs/OrientedBox
# Pose = position of centroid of object + orientation of object.
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



(provide :object_detection_3d_msgs/DetectedObject3D "313c73372cba8ca3b40d40c0f7d90ff3")


