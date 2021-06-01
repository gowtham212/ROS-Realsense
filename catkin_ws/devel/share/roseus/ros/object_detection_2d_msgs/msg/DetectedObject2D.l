;; Auto-generated. Do not edit!


(when (boundp 'object_detection_2d_msgs::DetectedObject2D)
  (if (not (find-package "OBJECT_DETECTION_2D_MSGS"))
    (make-package "OBJECT_DETECTION_2D_MSGS"))
  (shadow 'DetectedObject2D (find-package "OBJECT_DETECTION_2D_MSGS")))
(unless (find-package "OBJECT_DETECTION_2D_MSGS::DETECTEDOBJECT2D")
  (make-package "OBJECT_DETECTION_2D_MSGS::DETECTEDOBJECT2D"))

(in-package "ROS")
;;//! \htmlinclude DetectedObject2D.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass object_detection_2d_msgs::DetectedObject2D
  :super ros::object
  :slots (_name _polygon ))

(defmethod object_detection_2d_msgs::DetectedObject2D
  (:init
   (&key
    ((:name __name) "")
    ((:polygon __polygon) (instance geometry_msgs::Polygon :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _polygon __polygon)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:polygon
   (&rest __polygon)
   (if (keywordp (car __polygon))
       (send* _polygon __polygon)
     (progn
       (if __polygon (setq _polygon (car __polygon)))
       _polygon)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; geometry_msgs/Polygon _polygon
    (send _polygon :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; geometry_msgs/Polygon _polygon
       (send _polygon :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Polygon _polygon
     (send _polygon :deserialize buf ptr-) (incf ptr- (send _polygon :serialization-length))
   ;;
   self)
  )

(setf (get object_detection_2d_msgs::DetectedObject2D :md5sum-) "b2f63dab106de6c7cc8886b56346457e")
(setf (get object_detection_2d_msgs::DetectedObject2D :datatype-) "object_detection_2d_msgs/DetectedObject2D")
(setf (get object_detection_2d_msgs::DetectedObject2D :definition-)
      "string name

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



(provide :object_detection_2d_msgs/DetectedObject2D "b2f63dab106de6c7cc8886b56346457e")


