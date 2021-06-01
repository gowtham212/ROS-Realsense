;; Auto-generated. Do not edit!


(when (boundp 'gowtham::MyMsg)
  (if (not (find-package "GOWTHAM"))
    (make-package "GOWTHAM"))
  (shadow 'MyMsg (find-package "GOWTHAM")))
(unless (find-package "GOWTHAM::MYMSG")
  (make-package "GOWTHAM::MYMSG"))

(in-package "ROS")
;;//! \htmlinclude MyMsg.msg.html


(defclass gowtham::MyMsg
  :super ros::object
  :slots (_first _second _third _text ))

(defmethod gowtham::MyMsg
  (:init
   (&key
    ((:first __first) 0)
    ((:second __second) 0)
    ((:third __third) 0)
    ((:text __text) "")
    )
   (send-super :init)
   (setq _first (round __first))
   (setq _second (round __second))
   (setq _third (round __third))
   (setq _text (string __text))
   self)
  (:first
   (&optional __first)
   (if __first (setq _first __first)) _first)
  (:second
   (&optional __second)
   (if __second (setq _second __second)) _second)
  (:third
   (&optional __third)
   (if __third (setq _third __third)) _third)
  (:text
   (&optional __text)
   (if __text (setq _text __text)) _text)
  (:serialization-length
   ()
   (+
    ;; int32 _first
    4
    ;; int32 _second
    4
    ;; int32 _third
    4
    ;; string _text
    4 (length _text)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _first
       (write-long _first s)
     ;; int32 _second
       (write-long _second s)
     ;; int32 _third
       (write-long _third s)
     ;; string _text
       (write-long (length _text) s) (princ _text s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _first
     (setq _first (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _second
     (setq _second (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _third
     (setq _third (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _text
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _text (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get gowtham::MyMsg :md5sum-) "9cb9302f78c9ed948d0a985d9594799d")
(setf (get gowtham::MyMsg :datatype-) "gowtham/MyMsg")
(setf (get gowtham::MyMsg :definition-)
      "int32 first
int32 second
int32 third
string text
")



(provide :gowtham/MyMsg "9cb9302f78c9ed948d0a985d9594799d")


