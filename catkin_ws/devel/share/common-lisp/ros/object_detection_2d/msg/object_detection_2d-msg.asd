
(cl:in-package :asdf)

(defsystem "object_detection_2d-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "MouseEvent" :depends-on ("_package_MouseEvent"))
    (:file "_package_MouseEvent" :depends-on ("_package"))
    (:file "Point2D" :depends-on ("_package_Point2D"))
    (:file "_package_Point2D" :depends-on ("_package"))
    (:file "Rect2D" :depends-on ("_package_Rect2D"))
    (:file "_package_Rect2D" :depends-on ("_package"))
  ))