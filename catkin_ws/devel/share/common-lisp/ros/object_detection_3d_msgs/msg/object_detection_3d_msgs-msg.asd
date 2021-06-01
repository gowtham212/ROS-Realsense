
(cl:in-package :asdf)

(defsystem "object_detection_3d_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DetectedObject3D" :depends-on ("_package_DetectedObject3D"))
    (:file "_package_DetectedObject3D" :depends-on ("_package"))
    (:file "DetectedObject3DArray" :depends-on ("_package_DetectedObject3DArray"))
    (:file "_package_DetectedObject3DArray" :depends-on ("_package"))
    (:file "OrientedBox" :depends-on ("_package_OrientedBox"))
    (:file "_package_OrientedBox" :depends-on ("_package"))
  ))