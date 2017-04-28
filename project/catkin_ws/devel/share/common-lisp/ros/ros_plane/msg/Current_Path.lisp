; Auto-generated. Do not edit!


(cl:in-package ros_plane-msg)


;//! \htmlinclude Current_Path.msg.html

(cl:defclass <Current_Path> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:boolean
    :initform cl:nil)
   (Va_d
    :reader Va_d
    :initarg :Va_d
    :type cl:float
    :initform 0.0)
   (r
    :reader r
    :initarg :r
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (q
    :reader q
    :initarg :q
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (c
    :reader c
    :initarg :c
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (rho
    :reader rho
    :initarg :rho
    :type cl:float
    :initform 0.0)
   (lambda
    :reader lambda
    :initarg :lambda
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Current_Path (<Current_Path>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Current_Path>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Current_Path)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_plane-msg:<Current_Path> is deprecated: use ros_plane-msg:Current_Path instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <Current_Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_plane-msg:flag-val is deprecated.  Use ros_plane-msg:flag instead.")
  (flag m))

(cl:ensure-generic-function 'Va_d-val :lambda-list '(m))
(cl:defmethod Va_d-val ((m <Current_Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_plane-msg:Va_d-val is deprecated.  Use ros_plane-msg:Va_d instead.")
  (Va_d m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <Current_Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_plane-msg:r-val is deprecated.  Use ros_plane-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'q-val :lambda-list '(m))
(cl:defmethod q-val ((m <Current_Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_plane-msg:q-val is deprecated.  Use ros_plane-msg:q instead.")
  (q m))

(cl:ensure-generic-function 'c-val :lambda-list '(m))
(cl:defmethod c-val ((m <Current_Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_plane-msg:c-val is deprecated.  Use ros_plane-msg:c instead.")
  (c m))

(cl:ensure-generic-function 'rho-val :lambda-list '(m))
(cl:defmethod rho-val ((m <Current_Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_plane-msg:rho-val is deprecated.  Use ros_plane-msg:rho instead.")
  (rho m))

(cl:ensure-generic-function 'lambda-val :lambda-list '(m))
(cl:defmethod lambda-val ((m <Current_Path>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_plane-msg:lambda-val is deprecated.  Use ros_plane-msg:lambda instead.")
  (lambda m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Current_Path>) ostream)
  "Serializes a message object of type '<Current_Path>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flag) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Va_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'r))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'q))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'c))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'rho))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'lambda)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Current_Path>) istream)
  "Deserializes a message object of type '<Current_Path>"
    (cl:setf (cl:slot-value msg 'flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Va_d) (roslisp-utils:decode-single-float-bits bits)))
  (cl:setf (cl:slot-value msg 'r) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'r)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'q) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'q)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'c) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'c)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rho) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lambda) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Current_Path>)))
  "Returns string type for a message object of type '<Current_Path>"
  "ros_plane/Current_Path")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Current_Path)))
  "Returns string type for a message object of type 'Current_Path"
  "ros_plane/Current_Path")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Current_Path>)))
  "Returns md5sum for a message object of type '<Current_Path>"
  "4af1751f6b464a5a3cb09551a027be48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Current_Path)))
  "Returns md5sum for a message object of type 'Current_Path"
  "4af1751f6b464a5a3cb09551a027be48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Current_Path>)))
  "Returns full string definition for message of type '<Current_Path>"
  (cl:format cl:nil "# Current path output from the path manager, input to path follower~%~%# @warning Va_d have always to be valid, r and q need to be valid if flag is true, c rho and lambda need to be valid otherwise~%bool flag		# Inicates strait line or orbital path (true is line, false is orbit)~%float32 Va_d		# Desired airspeed (m/s)~%float32[3] r		# Vector to origin of straight line path (m)~%float32[3] q		# Unit vector, desired direction of travel for line path~%float32[3] c		# Center of orbital path (m)~%float32 rho		# Radius of orbital path (m)~%int8 lambda		# Direction of orbital path (clockwise is 1, counterclockwise is -1)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Current_Path)))
  "Returns full string definition for message of type 'Current_Path"
  (cl:format cl:nil "# Current path output from the path manager, input to path follower~%~%# @warning Va_d have always to be valid, r and q need to be valid if flag is true, c rho and lambda need to be valid otherwise~%bool flag		# Inicates strait line or orbital path (true is line, false is orbit)~%float32 Va_d		# Desired airspeed (m/s)~%float32[3] r		# Vector to origin of straight line path (m)~%float32[3] q		# Unit vector, desired direction of travel for line path~%float32[3] c		# Center of orbital path (m)~%float32 rho		# Radius of orbital path (m)~%int8 lambda		# Direction of orbital path (clockwise is 1, counterclockwise is -1)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Current_Path>))
  (cl:+ 0
     1
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'r) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'q) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'c) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Current_Path>))
  "Converts a ROS message object to a list"
  (cl:list 'Current_Path
    (cl:cons ':flag (flag msg))
    (cl:cons ':Va_d (Va_d msg))
    (cl:cons ':r (r msg))
    (cl:cons ':q (q msg))
    (cl:cons ':c (c msg))
    (cl:cons ':rho (rho msg))
    (cl:cons ':lambda (lambda msg))
))
