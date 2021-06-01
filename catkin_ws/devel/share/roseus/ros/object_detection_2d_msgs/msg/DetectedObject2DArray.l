;; Auto-generated. Do not edit!


(when (boundp 'object_detection_2d_msgs::DetectedObject2DArray)
  (if (not (find-package "OBJECT_DETECTION_2D_MSGS"))
    (make-package "OBJECT_DETECTION_2D_MSGS"))
  (shadow 'DetectedObject2DArray (find-package "OBJECT_DETECTION_2D_MSGS")))
(unless (find-package "OBJECT_DETECTION_2D_MSGS::DETECTEDOBJECT2DARRAY")
  (make-package "OBJECT_DETECTION_2D_MSGS::DETECTEDOBJECT2DARRAY"))

(in-package "ROS")
;;//! \htmlinclude DetectedObject2DArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass object_detection_2d_msgs::DetectedObject2DArray
  :super ros::object
  :slots (_header _objects ))

(defmethod object_detection_2d_msgs::DetectedObject2DArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance object_detection_2d_msgs::DetectedObject2D :init) r)) r))
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
    ;; object_detection_2d_msgs/DetectedObject2D[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; object_detection_2d_msgs/DetectedObject2D[] _objects
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
   ;; object_detection_2d_msgs/DetectedObject2D[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance object_detection_2d_msgs::DetectedObject2D :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get object_detection_2d_msgs::DetectedObject2DArray :md5sum-) "6f000d144a2435e976874e58da56b6a7")
(setf (get object_detection_2d_msgs::DetectedObject2DArray :datatype-) "object_detection_2d_msgs/DetectedObject2DArray")
(setf (get object_detection_2d_msgs::DetectedObject2DArray :definition-)
      "std_msgs/Header header
DetectedObject2D[] objects

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
MSG: object_detection_2d_msgs/DetectedObject2D
string name

# We use a polygon to represent the location of the object in pixel space.
# This gives us a very general description of the object and many possibilities
# for describing the contour of the object.
# Polygon is also predefined in the geometry_msgs package. We set the
# z-coordinate of the points in the polygon to zero since we work in pixel
# space.
geometry_msgs/Polygon polygon

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :object_detection_2d_msgs/DetectedObject2DArray "6f000d144a2435e976874e58da56b6a7")


