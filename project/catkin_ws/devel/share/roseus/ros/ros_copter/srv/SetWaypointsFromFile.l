;; Auto-generated. Do not edit!


(when (boundp 'ros_copter::SetWaypointsFromFile)
  (if (not (find-package "ROS_COPTER"))
    (make-package "ROS_COPTER"))
  (shadow 'SetWaypointsFromFile (find-package "ROS_COPTER")))
(unless (find-package "ROS_COPTER::SETWAYPOINTSFROMFILE")
  (make-package "ROS_COPTER::SETWAYPOINTSFROMFILE"))
(unless (find-package "ROS_COPTER::SETWAYPOINTSFROMFILEREQUEST")
  (make-package "ROS_COPTER::SETWAYPOINTSFROMFILEREQUEST"))
(unless (find-package "ROS_COPTER::SETWAYPOINTSFROMFILERESPONSE")
  (make-package "ROS_COPTER::SETWAYPOINTSFROMFILERESPONSE"))

(in-package "ROS")





(defclass ros_copter::SetWaypointsFromFileRequest
  :super ros::object
  :slots (_filename ))

(defmethod ros_copter::SetWaypointsFromFileRequest
  (:init
   (&key
    ((:filename __filename) "")
    )
   (send-super :init)
   (setq _filename (string __filename))
   self)
  (:filename
   (&optional __filename)
   (if __filename (setq _filename __filename)) _filename)
  (:serialization-length
   ()
   (+
    ;; string _filename
    4 (length _filename)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filename
       (write-long (length _filename) s) (princ _filename s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filename
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filename (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass ros_copter::SetWaypointsFromFileResponse
  :super ros::object
  :slots (_success ))

(defmethod ros_copter::SetWaypointsFromFileResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_copter::SetWaypointsFromFile
  :super ros::object
  :slots ())

(setf (get ros_copter::SetWaypointsFromFile :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get ros_copter::SetWaypointsFromFile :datatype-) "ros_copter/SetWaypointsFromFile")
(setf (get ros_copter::SetWaypointsFromFile :request) ros_copter::SetWaypointsFromFileRequest)
(setf (get ros_copter::SetWaypointsFromFile :response) ros_copter::SetWaypointsFromFileResponse)

(defmethod ros_copter::SetWaypointsFromFileRequest
  (:response () (instance ros_copter::SetWaypointsFromFileResponse :init)))

(setf (get ros_copter::SetWaypointsFromFileRequest :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get ros_copter::SetWaypointsFromFileRequest :datatype-) "ros_copter/SetWaypointsFromFileRequest")
(setf (get ros_copter::SetWaypointsFromFileRequest :definition-)
      "


string filename
---
bool success

")

(setf (get ros_copter::SetWaypointsFromFileResponse :md5sum-) "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(setf (get ros_copter::SetWaypointsFromFileResponse :datatype-) "ros_copter/SetWaypointsFromFileResponse")
(setf (get ros_copter::SetWaypointsFromFileResponse :definition-)
      "


string filename
---
bool success

")



(provide :ros_copter/SetWaypointsFromFile "93a4bc4c60dc17e2a69e3fcaaa25d69d")


