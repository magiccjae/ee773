;; Auto-generated. Do not edit!


(when (boundp 'fcu_common::State)
  (if (not (find-package "FCU_COMMON"))
    (make-package "FCU_COMMON"))
  (shadow 'State (find-package "FCU_COMMON")))
(unless (find-package "FCU_COMMON::STATE")
  (make-package "FCU_COMMON::STATE"))

(in-package "ROS")
;;//! \htmlinclude State.msg.html


(defclass fcu_common::State
  :super ros::object
  :slots (_position _Va _alpha _beta _phi _theta _psi _chi _p _q _r _Vg _wn _we _quat _quat_valid _chi_deg _psi_deg ))

(defmethod fcu_common::State
  (:init
   (&key
    ((:position __position) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:Va __Va) 0.0)
    ((:alpha __alpha) 0.0)
    ((:beta __beta) 0.0)
    ((:phi __phi) 0.0)
    ((:theta __theta) 0.0)
    ((:psi __psi) 0.0)
    ((:chi __chi) 0.0)
    ((:p __p) 0.0)
    ((:q __q) 0.0)
    ((:r __r) 0.0)
    ((:Vg __Vg) 0.0)
    ((:wn __wn) 0.0)
    ((:we __we) 0.0)
    ((:quat __quat) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:quat_valid __quat_valid) nil)
    ((:chi_deg __chi_deg) 0.0)
    ((:psi_deg __psi_deg) 0.0)
    )
   (send-super :init)
   (setq _position __position)
   (setq _Va (float __Va))
   (setq _alpha (float __alpha))
   (setq _beta (float __beta))
   (setq _phi (float __phi))
   (setq _theta (float __theta))
   (setq _psi (float __psi))
   (setq _chi (float __chi))
   (setq _p (float __p))
   (setq _q (float __q))
   (setq _r (float __r))
   (setq _Vg (float __Vg))
   (setq _wn (float __wn))
   (setq _we (float __we))
   (setq _quat __quat)
   (setq _quat_valid __quat_valid)
   (setq _chi_deg (float __chi_deg))
   (setq _psi_deg (float __psi_deg))
   self)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:Va
   (&optional __Va)
   (if __Va (setq _Va __Va)) _Va)
  (:alpha
   (&optional __alpha)
   (if __alpha (setq _alpha __alpha)) _alpha)
  (:beta
   (&optional __beta)
   (if __beta (setq _beta __beta)) _beta)
  (:phi
   (&optional __phi)
   (if __phi (setq _phi __phi)) _phi)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:psi
   (&optional __psi)
   (if __psi (setq _psi __psi)) _psi)
  (:chi
   (&optional __chi)
   (if __chi (setq _chi __chi)) _chi)
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:q
   (&optional __q)
   (if __q (setq _q __q)) _q)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:Vg
   (&optional __Vg)
   (if __Vg (setq _Vg __Vg)) _Vg)
  (:wn
   (&optional __wn)
   (if __wn (setq _wn __wn)) _wn)
  (:we
   (&optional __we)
   (if __we (setq _we __we)) _we)
  (:quat
   (&optional __quat)
   (if __quat (setq _quat __quat)) _quat)
  (:quat_valid
   (&optional __quat_valid)
   (if __quat_valid (setq _quat_valid __quat_valid)) _quat_valid)
  (:chi_deg
   (&optional __chi_deg)
   (if __chi_deg (setq _chi_deg __chi_deg)) _chi_deg)
  (:psi_deg
   (&optional __psi_deg)
   (if __psi_deg (setq _psi_deg __psi_deg)) _psi_deg)
  (:serialization-length
   ()
   (+
    ;; float32[3] _position
    (* 4    3)
    ;; float32 _Va
    4
    ;; float32 _alpha
    4
    ;; float32 _beta
    4
    ;; float32 _phi
    4
    ;; float32 _theta
    4
    ;; float32 _psi
    4
    ;; float32 _chi
    4
    ;; float32 _p
    4
    ;; float32 _q
    4
    ;; float32 _r
    4
    ;; float32 _Vg
    4
    ;; float32 _wn
    4
    ;; float32 _we
    4
    ;; float32[4] _quat
    (* 4    4)
    ;; bool _quat_valid
    1
    ;; float32 _chi_deg
    4
    ;; float32 _psi_deg
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _position
     (dotimes (i 3)
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32 _Va
       (sys::poke _Va (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _alpha
       (sys::poke _alpha (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _beta
       (sys::poke _beta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _phi
       (sys::poke _phi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _psi
       (sys::poke _psi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _chi
       (sys::poke _chi (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _p
       (sys::poke _p (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _q
       (sys::poke _q (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _r
       (sys::poke _r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _Vg
       (sys::poke _Vg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _wn
       (sys::poke _wn (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _we
       (sys::poke _we (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32[4] _quat
     (dotimes (i 4)
       (sys::poke (elt _quat i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; bool _quat_valid
       (if _quat_valid (write-byte -1 s) (write-byte 0 s))
     ;; float32 _chi_deg
       (sys::poke _chi_deg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _psi_deg
       (sys::poke _psi_deg (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _position
   (dotimes (i (length _position))
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32 _Va
     (setq _Va (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _alpha
     (setq _alpha (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _beta
     (setq _beta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _phi
     (setq _phi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _psi
     (setq _psi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _chi
     (setq _chi (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _p
     (setq _p (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _q
     (setq _q (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _r
     (setq _r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _Vg
     (setq _Vg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _wn
     (setq _wn (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _we
     (setq _we (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32[4] _quat
   (dotimes (i (length _quat))
     (setf (elt _quat i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; bool _quat_valid
     (setq _quat_valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _chi_deg
     (setq _chi_deg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _psi_deg
     (setq _psi_deg (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get fcu_common::State :md5sum-) "c8ae256dc92714137a627312899ef106")
(setf (get fcu_common::State :datatype-) "fcu_common/State")
(setf (get fcu_common::State :definition-)
      "# Vehicle state 'x_hat' output from the estimator or from simulator 

# @warning roll, pitch and yaw have always to be valid, the quaternion is optional
float32[3] position	# north, east, down (m)
float32 Va		# Airspeed (m/s)
float32 alpha		# Angle of attack (rad)
float32 beta		# Slide slip angle (rad)
float32 phi		# Roll angle (rad)
float32 theta		# Pitch angle (rad)
float32 psi		# Yaw angle (rad)
float32 chi		# Course angle (rad)
float32 p		# Body frame rollrate (rad/s)
float32 q		# Body frame pitchrate (rad/s)
float32 r		# Body frame yawrate (rad/s)
float32 Vg		# Groundspeed (m/s)
float32 wn		# Windspeed north component (m/s)
float32 we		# Windspeed east component (m/s)
float32[4] quat		# Quaternion (wxyz, NED)
bool quat_valid		# Quaternion valid
float32 chi_deg		# Wrapped course angle (deg)
float32 psi_deg		# Wrapped yaw angle (deg)

")



(provide :fcu_common/State "c8ae256dc92714137a627312899ef106")


