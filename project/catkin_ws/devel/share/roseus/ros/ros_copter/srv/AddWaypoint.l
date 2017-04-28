;; Auto-generated. Do not edit!


(when (boundp 'ros_copter::AddWaypoint)
  (if (not (find-package "ROS_COPTER"))
    (make-package "ROS_COPTER"))
  (shadow 'AddWaypoint (find-package "ROS_COPTER")))
(unless (find-package "ROS_COPTER::ADDWAYPOINT")
  (make-package "ROS_COPTER::ADDWAYPOINT"))
(unless (find-package "ROS_COPTER::ADDWAYPOINTREQUEST")
  (make-package "ROS_COPTER::ADDWAYPOINTREQUEST"))
(unless (find-package "ROS_COPTER::ADDWAYPOINTRESPONSE")
  (make-package "ROS_COPTER::ADDWAYPOINTRESPONSE"))

(in-package "ROS")





(defclass ros_copter::AddWaypointRequest
  :super ros::object
  :slots (_x _y _z ))

(defmethod ros_copter::AddWaypointRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass ros_copter::AddWaypointResponse
  :super ros::object
  :slots (_length ))

(defmethod ros_copter::AddWaypointResponse
  (:init
   (&key
    ((:length __length) 0)
    )
   (send-super :init)
   (setq _length (round __length))
   self)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:serialization-length
   ()
   (+
    ;; int32 _length
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _length
       (write-long _length s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _length
     (setq _length (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass ros_copter::AddWaypoint
  :super ros::object
  :slots ())

(setf (get ros_copter::AddWaypoint :md5sum-) "7cfdc1b052a1b4a9bf3df9443ff04be6")
(setf (get ros_copter::AddWaypoint :datatype-) "ros_copter/AddWaypoint")
(setf (get ros_copter::AddWaypoint :request) ros_copter::AddWaypointRequest)
(setf (get ros_copter::AddWaypoint :response) ros_copter::AddWaypointResponse)

(defmethod ros_copter::AddWaypointRequest
  (:response () (instance ros_copter::AddWaypointResponse :init)))

(setf (get ros_copter::AddWaypointRequest :md5sum-) "7cfdc1b052a1b4a9bf3df9443ff04be6")
(setf (get ros_copter::AddWaypointRequest :datatype-) "ros_copter/AddWaypointRequest")
(setf (get ros_copter::AddWaypointRequest :definition-)
      "

float64 x
float64 y
float64 z
---
int32 length

")

(setf (get ros_copter::AddWaypointResponse :md5sum-) "7cfdc1b052a1b4a9bf3df9443ff04be6")
(setf (get ros_copter::AddWaypointResponse :datatype-) "ros_copter/AddWaypointResponse")
(setf (get ros_copter::AddWaypointResponse :definition-)
      "

float64 x
float64 y
float64 z
---
int32 length

")



(provide :ros_copter/AddWaypoint "7cfdc1b052a1b4a9bf3df9443ff04be6")


