;; Auto-generated. Do not edit!


(when (boundp 'fcu_common::GPS)
  (if (not (find-package "FCU_COMMON"))
    (make-package "FCU_COMMON"))
  (shadow 'GPS (find-package "FCU_COMMON")))
(unless (find-package "FCU_COMMON::GPS")
  (make-package "FCU_COMMON::GPS"))

(in-package "ROS")
;;//! \htmlinclude GPS.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fcu_common::GPS
  :super ros::object
  :slots (_header _fix _NumSat _latitude _longitude _altitude _speed _ground_course _covariance ))

(defmethod fcu_common::GPS
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fix __fix) nil)
    ((:NumSat __NumSat) 0)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:speed __speed) 0.0)
    ((:ground_course __ground_course) 0.0)
    ((:covariance __covariance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fix __fix)
   (setq _NumSat (round __NumSat))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _speed (float __speed))
   (setq _ground_course (float __ground_course))
   (setq _covariance (float __covariance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fix
   (&optional __fix)
   (if __fix (setq _fix __fix)) _fix)
  (:NumSat
   (&optional __NumSat)
   (if __NumSat (setq _NumSat __NumSat)) _NumSat)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:ground_course
   (&optional __ground_course)
   (if __ground_course (setq _ground_course __ground_course)) _ground_course)
  (:covariance
   (&optional __covariance)
   (if __covariance (setq _covariance __covariance)) _covariance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _fix
    1
    ;; int16 _NumSat
    2
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _speed
    8
    ;; float64 _ground_course
    8
    ;; float64 _covariance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _fix
       (if _fix (write-byte -1 s) (write-byte 0 s))
     ;; int16 _NumSat
       (write-word _NumSat s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ground_course
       (sys::poke _ground_course (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _covariance
       (sys::poke _covariance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _fix
     (setq _fix (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _NumSat
     (setq _NumSat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ground_course
     (setq _ground_course (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _covariance
     (setq _covariance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get fcu_common::GPS :md5sum-) "5f51d09ea3f3f94a526ed0c3afda01a5")
(setf (get fcu_common::GPS :datatype-) "fcu_common/GPS")
(setf (get fcu_common::GPS :definition-)
      "Header header
bool fix
int16 NumSat
float64 latitude # Deg
float64 longitude # Deg
float64 altitude # m
float64 speed # m/s
float64 ground_course # rad
float64 covariance # m

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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :fcu_common/GPS "5f51d09ea3f3f94a526ed0c3afda01a5")


