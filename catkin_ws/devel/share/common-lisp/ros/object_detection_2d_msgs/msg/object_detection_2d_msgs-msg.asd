
(cl:in-package :asdf)

(defsystem "object_detection_2d_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DetectedObject2D" :depends-on ("_package_DetectedObject2D"))
    (:file "_package_DetectedObject2D" :depends-on ("_package"))
    (:file "DetectedObject2DArray" :depends-on ("_package_DetectedObject2DArray"))
    (:file "_package_DetectedObject2DArray" :depends-on ("_package"))
  ))