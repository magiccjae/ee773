;; Auto-generated. Do not edit!


(when (boundp 'fcu_common::Airspeed)
  (if (not (find-package "FCU_COMMON"))
    (make-package "FCU_COMMON"))
  (shadow 'Airspeed (find-package "FCU_COMMON")))
(unless (find-package "FCU_COMMON::AIRSPEED")
  (make-package "FCU_COMMON::AIRSPEED"))

(in-package "ROS")
;;//! \htmlinclude Airspeed.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fcu_common::Airspeed
  :super ros::object
  :slots (_header _velocity _differential_pressure _temperature ))

(defmethod fcu_common::Airspeed
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:velocity __velocity) 0.0)
    ((:differential_pressure __differential_pressure) 0.0)
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _velocity (float __velocity))
   (setq _differential_pressure (float __differential_pressure))
   (setq _temperature (float __temperature))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:differential_pressure
   (&optional __differential_pressure)
   (if __differential_pressure (setq _differential_pressure __differential_pressure)) _differential_pressure)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _velocity
    4
    ;; float32 _differential_pressure
    4
    ;; float32 _temperature
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _differential_pressure
       (sys::poke _differential_pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _velocity
     (setq _velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _differential_pressure
     (setq _differential_pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fcu_common::Airspeed :md5sum-) "2d085b3a5f8eeedfe9115165a08be6e9")
(setf (get fcu_common::Airspeed :datatype-) "fcu_common/Airspeed")
(setf (get fcu_common::Airspeed :definition-)
      "Header header
float32 velocity # m/s
float32 differential_pressure # Pa
float32 temperature # K

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



(provide :fcu_common/Airspeed "2d085b3a5f8eeedfe9115165a08be6e9")


