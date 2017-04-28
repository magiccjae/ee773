;; Auto-generated. Do not edit!


(when (boundp 'fcu_common::OutputRaw)
  (if (not (find-package "FCU_COMMON"))
    (make-package "FCU_COMMON"))
  (shadow 'OutputRaw (find-package "FCU_COMMON")))
(unless (find-package "FCU_COMMON::OUTPUTRAW")
  (make-package "FCU_COMMON::OUTPUTRAW"))

(in-package "ROS")
;;//! \htmlinclude OutputRaw.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass fcu_common::OutputRaw
  :super ros::object
  :slots (_header _values ))

(defmethod fcu_common::OutputRaw
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:values __values) (make-array 16 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _values __values)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[16] _values
    (* 4    16)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[16] _values
     (dotimes (i 16)
       (sys::poke (elt _values i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[16] _values
   (dotimes (i (length _values))
     (setf (elt _values i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get fcu_common::OutputRaw :md5sum-) "08987769c120a488f03d45d098faee86")
(setf (get fcu_common::OutputRaw :datatype-) "fcu_common/OutputRaw")
(setf (get fcu_common::OutputRaw :definition-)
      "# raw servo outputs

Header header
float32[16] values

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



(provide :fcu_common/OutputRaw "08987769c120a488f03d45d098faee86")


