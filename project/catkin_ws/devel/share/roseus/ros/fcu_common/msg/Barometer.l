;; Auto-generated. Do not edit!


(when (boundp 'fcu_common::Barometer)
  (if (not (find-package "FCU_COMMON"))
    (make-package "FCU_COMMON"))
  (shadow 'Barometer (find-package "FCU_COMMON")))
(unless (find-package "FCU_COMMON::BAROMETER")
  (make-package "FCU_COMMON::BAROMETER"))

(in-package "ROS")
;;//! \htmlinclude Barometer.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fcu_common::Barometer
  :super ros::object
  :slots (_header _altitude _pressure _temperature ))

(defmethod fcu_common::Barometer
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:altitude __altitude) 0.0)
    ((:pressure __pressure) 0.0)
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _altitude (float __altitude))
   (setq _pressure (float __pressure))
   (setq _temperature (float __temperature))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:pressure
   (&optional __pressure)
   (if __pressure (setq _pressure __pressure)) _pressure)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _altitude
    4
    ;; float32 _pressure
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
     ;; float32 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pressure
       (sys::poke _pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _altitude
     (setq _altitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pressure
     (setq _pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temperature
     (setq _temperature (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fcu_common::Barometer :md5sum-) "8f7934988670983d230d20b43f141575")
(setf (get fcu_common::Barometer :datatype-) "fcu_common/Barometer")
(setf (get fcu_common::Barometer :definition-)
      "Header header
float32 altitude
float32 pressure
float32 temperature

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



(provide :fcu_common/Barometer "8f7934988670983d230d20b43f141575")


