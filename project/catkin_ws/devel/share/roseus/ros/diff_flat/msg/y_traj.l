;; Auto-generated. Do not edit!


(when (boundp 'diff_flat::y_traj)
  (if (not (find-package "DIFF_FLAT"))
    (make-package "DIFF_FLAT"))
  (shadow 'y_traj (find-package "DIFF_FLAT")))
(unless (find-package "DIFF_FLAT::Y_TRAJ")
  (make-package "DIFF_FLAT::Y_TRAJ"))

(in-package "ROS")
;;//! \htmlinclude y_traj.msg.html


(defclass diff_flat::y_traj
  :super ros::object
  :slots (_pn _pe _pd _psi _pn_dot _pe_dot _pd_dot _psi_dot _pn_ddot _pe_ddot _pd_ddot _psi_ddot ))

(defmethod diff_flat::y_traj
  (:init
   (&key
    ((:pn __pn) 0.0)
    ((:pe __pe) 0.0)
    ((:pd __pd) 0.0)
    ((:psi __psi) 0.0)
    ((:pn_dot __pn_dot) 0.0)
    ((:pe_dot __pe_dot) 0.0)
    ((:pd_dot __pd_dot) 0.0)
    ((:psi_dot __psi_dot) 0.0)
    ((:pn_ddot __pn_ddot) 0.0)
    ((:pe_ddot __pe_ddot) 0.0)
    ((:pd_ddot __pd_ddot) 0.0)
    ((:psi_ddot __psi_ddot) 0.0)
    )
   (send-super :init)
   (setq _pn (float __pn))
   (setq _pe (float __pe))
   (setq _pd (float __pd))
   (setq _psi (float __psi))
   (setq _pn_dot (float __pn_dot))
   (setq _pe_dot (float __pe_dot))
   (setq _pd_dot (float __pd_dot))
   (setq _psi_dot (float __psi_dot))
   (setq _pn_ddot (float __pn_ddot))
   (setq _pe_ddot (float __pe_ddot))
   (setq _pd_ddot (float __pd_ddot))
   (setq _psi_ddot (float __psi_ddot))
   self)
  (:pn
   (&optional __pn)
   (if __pn (setq _pn __pn)) _pn)
  (:pe
   (&optional __pe)
   (if __pe (setq _pe __pe)) _pe)
  (:pd
   (&optional __pd)
   (if __pd (setq _pd __pd)) _pd)
  (:psi
   (&optional __psi)
   (if __psi (setq _psi __psi)) _psi)
  (:pn_dot
   (&optional __pn_dot)
   (if __pn_dot (setq _pn_dot __pn_dot)) _pn_dot)
  (:pe_dot
   (&optional __pe_dot)
   (if __pe_dot (setq _pe_dot __pe_dot)) _pe_dot)
  (:pd_dot
   (&optional __pd_dot)
   (if __pd_dot (setq _pd_dot __pd_dot)) _pd_dot)
  (:psi_dot
   (&optional __psi_dot)
   (if __psi_dot (setq _psi_dot __psi_dot)) _psi_dot)
  (:pn_ddot
   (&optional __pn_ddot)
   (if __pn_ddot (setq _pn_ddot __pn_ddot)) _pn_ddot)
  (:pe_ddot
   (&optional __pe_ddot)
   (if __pe_ddot (setq _pe_ddot __pe_ddot)) _pe_ddot)
  (:pd_ddot
   (&optional __pd_ddot)
   (if __pd_ddot (setq _pd_ddot __pd_ddot)) _pd_ddot)
  (:psi_ddot
   (&optional __psi_ddot)
   (if __psi_ddot (setq _psi_ddot __psi_ddot)) _psi_ddot)
  (:serialization-length
   ()
   (+
    ;; float64 _pn
    8
    ;; float64 _pe
    8
    ;; float64 _pd
    8
    ;; float64 _psi
    8
    ;; float64 _pn_dot
    8
    ;; float64 _pe_dot
    8
    ;; float64 _pd_dot
    8
    ;; float64 _psi_dot
    8
    ;; float64 _pn_ddot
    8
    ;; float64 _pe_ddot
    8
    ;; float64 _pd_ddot
    8
    ;; float64 _psi_ddot
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _pn
       (sys::poke _pn (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pe
       (sys::poke _pe (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pd
       (sys::poke _pd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _psi
       (sys::poke _psi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pn_dot
       (sys::poke _pn_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pe_dot
       (sys::poke _pe_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pd_dot
       (sys::poke _pd_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _psi_dot
       (sys::poke _psi_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pn_ddot
       (sys::poke _pn_ddot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pe_ddot
       (sys::poke _pe_ddot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pd_ddot
       (sys::poke _pd_ddot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _psi_ddot
       (sys::poke _psi_ddot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _pn
     (setq _pn (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pe
     (setq _pe (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pd
     (setq _pd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psi
     (setq _psi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pn_dot
     (setq _pn_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pe_dot
     (setq _pe_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pd_dot
     (setq _pd_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psi_dot
     (setq _psi_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pn_ddot
     (setq _pn_ddot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pe_ddot
     (setq _pe_ddot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pd_ddot
     (setq _pd_ddot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _psi_ddot
     (setq _psi_ddot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get diff_flat::y_traj :md5sum-) "d4e248087d14e75e385030970108f437")
(setf (get diff_flat::y_traj :datatype-) "diff_flat/y_traj")
(setf (get diff_flat::y_traj :definition-)
      "float64 pn
float64 pe
float64 pd
float64 psi
float64 pn_dot
float64 pe_dot
float64 pd_dot
float64 psi_dot
float64 pn_ddot
float64 pe_ddot
float64 pd_ddot
float64 psi_ddot

")



(provide :diff_flat/y_traj "d4e248087d14e75e385030970108f437")


