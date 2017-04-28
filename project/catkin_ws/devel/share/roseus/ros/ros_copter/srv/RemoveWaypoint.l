;; Auto-generated. Do not edit!


(when (boundp 'ros_copter::RemoveWaypoint)
  (if (not (find-package "ROS_COPTER"))
    (make-package "ROS_COPTER"))
  (shadow 'RemoveWaypoint (find-package "ROS_COPTER")))
(unless (find-package "ROS_COPTER::REMOVEWAYPOINT")
  (make-package "ROS_COPTER::REMOVEWAYPOINT"))
(unless (find-package "ROS_COPTER::REMOVEWAYPOINTREQUEST")
  (make-package "ROS_COPTER::REMOVEWAYPOINTREQUEST"))
(unless (find-package "ROS_COPTER::REMOVEWAYPOINTRESPONSE")
  (make-package "ROS_COPTER::REMOVEWAYPOINTRESPONSE"))

(in-package "ROS")





(defclass ros_copter::RemoveWaypointRequest
  :super ros::object
  :slots (_front ))

(defmethod ros_copter::RemoveWaypointRequest
  (:init
   (&key
    ((:front __front) nil)
    )
   (send-super :init)
   (setq _front __front)
   self)
  (:front
   (&optional __front)
   (if __front (setq _front __front)) _front)
  (:serialization-length
   ()
   (+
    ;; bool _front
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _front
       (if _front (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _front
     (setq _front (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass ros_copter::RemoveWaypointResponse
  :super ros::object
  :slots (_length ))

(defmethod ros_copter::RemoveWaypointResponse
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

(defclass ros_copter::RemoveWaypoint
  :super ros::object
  :slots ())

(setf (get ros_copter::RemoveWaypoint :md5sum-) "8e64718d0fc1826ffd884d37ef95c787")
(setf (get ros_copter::RemoveWaypoint :datatype-) "ros_copter/RemoveWaypoint")
(setf (get ros_copter::RemoveWaypoint :request) ros_copter::RemoveWaypointRequest)
(setf (get ros_copter::RemoveWaypoint :response) ros_copter::RemoveWaypointResponse)

(defmethod ros_copter::RemoveWaypointRequest
  (:response () (instance ros_copter::RemoveWaypointResponse :init)))

(setf (get ros_copter::RemoveWaypointRequest :md5sum-) "8e64718d0fc1826ffd884d37ef95c787")
(setf (get ros_copter::RemoveWaypointRequest :datatype-) "ros_copter/RemoveWaypointRequest")
(setf (get ros_copter::RemoveWaypointRequest :definition-)
      "

bool front
---
int32 length

")

(setf (get ros_copter::RemoveWaypointResponse :md5sum-) "8e64718d0fc1826ffd884d37ef95c787")
(setf (get ros_copter::RemoveWaypointResponse :datatype-) "ros_copter/RemoveWaypointResponse")
(setf (get ros_copter::RemoveWaypointResponse :definition-)
      "

bool front
---
int32 length

")



(provide :ros_copter/RemoveWaypoint "8e64718d0fc1826ffd884d37ef95c787")


