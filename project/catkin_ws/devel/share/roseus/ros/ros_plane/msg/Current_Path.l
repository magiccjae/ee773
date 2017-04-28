;; Auto-generated. Do not edit!


(when (boundp 'ros_plane::Current_Path)
  (if (not (find-package "ROS_PLANE"))
    (make-package "ROS_PLANE"))
  (shadow 'Current_Path (find-package "ROS_PLANE")))
(unless (find-package "ROS_PLANE::CURRENT_PATH")
  (make-package "ROS_PLANE::CURRENT_PATH"))

(in-package "ROS")
;;//! \htmlinclude Current_Path.msg.html


(defclass ros_plane::Current_Path
  :super ros::object
  :slots (_flag _Va_d _r _q _c _rho _lambda ))

(defmethod ros_plane::Current_Path
  (:init
   (&key
    ((:flag __flag) nil)
    ((:Va_d __Va_d) 0.0)
    ((:r __r) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:q __q) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:c __c) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:rho __rho) 0.0)
    ((:lambda __lambda) 0)
    )
   (send-super :init)
   (setq _flag __flag)
   (setq _Va_d (float __Va_d))
   (setq _r __r)
   (setq _q __q)
   (setq _c __c)
   (setq _rho (float __rho))
   (setq _lambda (round __lambda))
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:Va_d
   (&optional __Va_d)
   (if __Va_d (setq _Va_d __Va_d)) _Va_d)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:q
   (&optional __q)
   (if __q (setq _q __q)) _q)
  (:c
   (&optional __c)
   (if __c (setq _c __c)) _c)
  (:rho
   (&optional __rho)
   (if __rho (setq _rho __rho)) _rho)
  (:lambda
   (&optional __lambda)
   (if __lambda (setq _lambda __lambda)) _lambda)
  (:serialization-length
   ()
   (+
    ;; bool _flag
    1
    ;; float32 _Va_d
    4
    ;; float32[3] _r
    (* 4    3)
    ;; float32[3] _q
    (* 4    3)
    ;; float32[3] _c
    (* 4    3)
    ;; float32 _rho
    4
    ;; int8 _lambda
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _flag
       (if _flag (write-byte -1 s) (write-byte 0 s))
     ;; float32 _Va_d
       (sys::poke _Va_d (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[3] _r
     (dotimes (i 3)
       (sys::poke (elt _r i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _q
     (dotimes (i 3)
       (sys::poke (elt _q i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _c
     (dotimes (i 3)
       (sys::poke (elt _c i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _rho
       (sys::poke _rho (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int8 _lambda
       (write-byte _lambda s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _flag
     (setq _flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _Va_d
     (setq _Va_d (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[3] _r
   (dotimes (i (length _r))
     (setf (elt _r i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _q
   (dotimes (i (length _q))
     (setf (elt _q i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _c
   (dotimes (i (length _c))
     (setf (elt _c i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _rho
     (setq _rho (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int8 _lambda
     (setq _lambda (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _lambda 127) (setq _lambda (- _lambda 256)))
   ;;
   self)
  )

(setf (get ros_plane::Current_Path :md5sum-) "4af1751f6b464a5a3cb09551a027be48")
(setf (get ros_plane::Current_Path :datatype-) "ros_plane/Current_Path")
(setf (get ros_plane::Current_Path :definition-)
      "# Current path output from the path manager, input to path follower

# @warning Va_d have always to be valid, r and q need to be valid if flag is true, c rho and lambda need to be valid otherwise
bool flag		# Inicates strait line or orbital path (true is line, false is orbit)
float32 Va_d		# Desired airspeed (m/s)
float32[3] r		# Vector to origin of straight line path (m)
float32[3] q		# Unit vector, desired direction of travel for line path
float32[3] c		# Center of orbital path (m)
float32 rho		# Radius of orbital path (m)
int8 lambda		# Direction of orbital path (clockwise is 1, counterclockwise is -1)

")



(provide :ros_plane/Current_Path "4af1751f6b464a5a3cb09551a027be48")


