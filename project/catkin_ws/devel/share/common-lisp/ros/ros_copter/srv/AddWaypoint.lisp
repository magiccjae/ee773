; Auto-generated. Do not edit!


(cl:in-package ros_copter-srv)


;//! \htmlinclude AddWaypoint-request.msg.html

(cl:defclass <AddWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass AddWaypoint-request (<AddWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_copter-srv:<AddWaypoint-request> is deprecated: use ros_copter-srv:AddWaypoint-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <AddWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_copter-srv:x-val is deprecated.  Use ros_copter-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <AddWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_copter-srv:y-val is deprecated.  Use ros_copter-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <AddWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_copter-srv:z-val is deprecated.  Use ros_copter-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddWaypoint-request>) ostream)
  "Serializes a message object of type '<AddWaypoint-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddWaypoint-request>) istream)
  "Deserializes a message object of type '<AddWaypoint-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddWaypoint-request>)))
  "Returns string type for a service object of type '<AddWaypoint-request>"
  "ros_copter/AddWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddWaypoint-request)))
  "Returns string type for a service object of type 'AddWaypoint-request"
  "ros_copter/AddWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddWaypoint-request>)))
  "Returns md5sum for a message object of type '<AddWaypoint-request>"
  "7cfdc1b052a1b4a9bf3df9443ff04be6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddWaypoint-request)))
  "Returns md5sum for a message object of type 'AddWaypoint-request"
  "7cfdc1b052a1b4a9bf3df9443ff04be6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddWaypoint-request>)))
  "Returns full string definition for message of type '<AddWaypoint-request>"
  (cl:format cl:nil "~%~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddWaypoint-request)))
  "Returns full string definition for message of type 'AddWaypoint-request"
  (cl:format cl:nil "~%~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddWaypoint-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AddWaypoint-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
;//! \htmlinclude AddWaypoint-response.msg.html

(cl:defclass <AddWaypoint-response> (roslisp-msg-protocol:ros-message)
  ((length
    :reader length
    :initarg :length
    :type cl:integer
    :initform 0))
)

(cl:defclass AddWaypoint-response (<AddWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AddWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AddWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_copter-srv:<AddWaypoint-response> is deprecated: use ros_copter-srv:AddWaypoint-response instead.")))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <AddWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_copter-srv:length-val is deprecated.  Use ros_copter-srv:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AddWaypoint-response>) ostream)
  "Serializes a message object of type '<AddWaypoint-response>"
  (cl:let* ((signed (cl:slot-value msg 'length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AddWaypoint-response>) istream)
  "Deserializes a message object of type '<AddWaypoint-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AddWaypoint-response>)))
  "Returns string type for a service object of type '<AddWaypoint-response>"
  "ros_copter/AddWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddWaypoint-response)))
  "Returns string type for a service object of type 'AddWaypoint-response"
  "ros_copter/AddWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AddWaypoint-response>)))
  "Returns md5sum for a message object of type '<AddWaypoint-response>"
  "7cfdc1b052a1b4a9bf3df9443ff04be6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AddWaypoint-response)))
  "Returns md5sum for a message object of type 'AddWaypoint-response"
  "7cfdc1b052a1b4a9bf3df9443ff04be6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AddWaypoint-response>)))
  "Returns full string definition for message of type '<AddWaypoint-response>"
  (cl:format cl:nil "int32 length~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AddWaypoint-response)))
  "Returns full string definition for message of type 'AddWaypoint-response"
  (cl:format cl:nil "int32 length~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AddWaypoint-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AddWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AddWaypoint-response
    (cl:cons ':length (length msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AddWaypoint)))
  'AddWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AddWaypoint)))
  'AddWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AddWaypoint)))
  "Returns string type for a service object of type '<AddWaypoint>"
  "ros_copter/AddWaypoint")