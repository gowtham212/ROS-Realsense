;; Auto-generated. Do not edit!


(when (boundp 'object_detection_3d_msgs::DetectedObject3DArray)
  (if (not (find-package "OBJECT_DETECTION_3D_MSGS"))
    (make-package "OBJECT_DETECTION_3D_MSGS"))
  (shadow 'DetectedObject3DArray (find-package "OBJECT_DETECTION_3D_MSGS")))
(unless (find-package "OBJECT_DETECTION_3D_MSGS::DETECTEDOBJECT3DARRAY")
  (make-package "OBJECT_DETECTION_3D_MSGS::DETECTEDOBJECT3DARRAY"))

(in-package "ROS")
;;//! \htmlinclude DetectedObject3DArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass object_detection_3d_msgs::DetectedObject3DArray
  :super ros::object
  :slots (_header _objects ))

(defmethod object_detection_3d_msgs::DetectedObject3DArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance object_detection_3d_msgs::DetectedObject3D :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; object_detection_3d_msgs/DetectedObject3D[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; object_detection_3d_msgs/DetectedObject3D[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; object_detection_3d_msgs/DetectedObject3D[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance object_detection_3d_msgs::DetectedObject3D :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get object_detection_3d_msgs::DetectedObject3DArray :md5sum-) "80c68494d0ddf60329a33fe213c4031f")
(setf (get object_detection_3d_msgs::DetectedObject3DArray :datatype-) "object_detection_3d_msgs/DetectedObject3DArray")
(setf (get object_detection_3d_msgs::DetectedObject3DArray :definition-)
      "std_msgs/Header header
DetectedObject3D[] objects

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: object_detection_3d_msgs/DetectedObject3D
string name
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



(provide :object_detection_3d_msgs/DetectedObject3DArray "80c68494d0ddf60329a33fe213c4031f")


