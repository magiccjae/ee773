; Auto-generated. Do not edit!


(cl:in-package ros_copter-srv)


;//! \htmlinclude RemoveWaypoint-request.msg.html

(cl:defclass <RemoveWaypoint-request> (roslisp-msg-protocol:ros-message)
  ((front
    :reader front
    :initarg :front
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RemoveWaypoint-request (<RemoveWaypoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveWaypoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveWaypoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_copter-srv:<RemoveWaypoint-request> is deprecated: use ros_copter-srv:RemoveWaypoint-request instead.")))

(cl:ensure-generic-function 'front-val :lambda-list '(m))
(cl:defmethod front-val ((m <RemoveWaypoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_copter-srv:front-val is deprecated.  Use ros_copter-srv:front instead.")
  (front m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveWaypoint-request>) ostream)
  "Serializes a message object of type '<RemoveWaypoint-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'front) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveWaypoint-request>) istream)
  "Deserializes a message object of type '<RemoveWaypoint-request>"
    (cl:setf (cl:slot-value msg 'front) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveWaypoint-request>)))
  "Returns string type for a service object of type '<RemoveWaypoint-request>"
  "ros_copter/RemoveWaypointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveWaypoint-request)))
  "Returns string type for a service object of type 'RemoveWaypoint-request"
  "ros_copter/RemoveWaypointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveWaypoint-request>)))
  "Returns md5sum for a message object of type '<RemoveWaypoint-request>"
  "8e64718d0fc1826ffd884d37ef95c787")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveWaypoint-request)))
  "Returns md5sum for a message object of type 'RemoveWaypoint-request"
  "8e64718d0fc1826ffd884d37ef95c787")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveWaypoint-request>)))
  "Returns full string definition for message of type '<RemoveWaypoint-request>"
  (cl:format cl:nil "~%~%bool front~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveWaypoint-request)))
  "Returns full string definition for message of type 'RemoveWaypoint-request"
  (cl:format cl:nil "~%~%bool front~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveWaypoint-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveWaypoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveWaypoint-request
    (cl:cons ':front (front msg))
))
;//! \htmlinclude RemoveWaypoint-response.msg.html

(cl:defclass <RemoveWaypoint-response> (roslisp-msg-protocol:ros-message)
  ((length
    :reader length
    :initarg :length
    :type cl:integer
    :initform 0))
)

(cl:defclass RemoveWaypoint-response (<RemoveWaypoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RemoveWaypoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RemoveWaypoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_copter-srv:<RemoveWaypoint-response> is deprecated: use ros_copter-srv:RemoveWaypoint-response instead.")))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <RemoveWaypoint-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_copter-srv:length-val is deprecated.  Use ros_copter-srv:length instead.")
  (length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RemoveWaypoint-response>) ostream)
  "Serializes a message object of type '<RemoveWaypoint-response>"
  (cl:let* ((signed (cl:slot-value msg 'length)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RemoveWaypoint-response>) istream)
  "Deserializes a message object of type '<RemoveWaypoint-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'length) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RemoveWaypoint-response>)))
  "Returns string type for a service object of type '<RemoveWaypoint-response>"
  "ros_copter/RemoveWaypointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveWaypoint-response)))
  "Returns string type for a service object of type 'RemoveWaypoint-response"
  "ros_copter/RemoveWaypointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RemoveWaypoint-response>)))
  "Returns md5sum for a message object of type '<RemoveWaypoint-response>"
  "8e64718d0fc1826ffd884d37ef95c787")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RemoveWaypoint-response)))
  "Returns md5sum for a message object of type 'RemoveWaypoint-response"
  "8e64718d0fc1826ffd884d37ef95c787")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RemoveWaypoint-response>)))
  "Returns full string definition for message of type '<RemoveWaypoint-response>"
  (cl:format cl:nil "int32 length~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RemoveWaypoint-response)))
  "Returns full string definition for message of type 'RemoveWaypoint-response"
  (cl:format cl:nil "int32 length~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RemoveWaypoint-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RemoveWaypoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RemoveWaypoint-response
    (cl:cons ':length (length msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RemoveWaypoint)))
  'RemoveWaypoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RemoveWaypoint)))
  'RemoveWaypoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RemoveWaypoint)))
  "Returns string type for a service object of type '<RemoveWaypoint>"
  "ros_copter/RemoveWaypoint")