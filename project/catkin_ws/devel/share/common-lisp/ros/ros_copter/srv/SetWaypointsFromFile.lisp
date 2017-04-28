; Auto-generated. Do not edit!


(cl:in-package ros_copter-srv)


;//! \htmlinclude SetWaypointsFromFile-request.msg.html

(cl:defclass <SetWaypointsFromFile-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass SetWaypointsFromFile-request (<SetWaypointsFromFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWaypointsFromFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWaypointsFromFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_copter-srv:<SetWaypointsFromFile-request> is deprecated: use ros_copter-srv:SetWaypointsFromFile-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <SetWaypointsFromFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_copter-srv:filename-val is deprecated.  Use ros_copter-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWaypointsFromFile-request>) ostream)
  "Serializes a message object of type '<SetWaypointsFromFile-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWaypointsFromFile-request>) istream)
  "Deserializes a message object of type '<SetWaypointsFromFile-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWaypointsFromFile-request>)))
  "Returns string type for a service object of type '<SetWaypointsFromFile-request>"
  "ros_copter/SetWaypointsFromFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWaypointsFromFile-request)))
  "Returns string type for a service object of type 'SetWaypointsFromFile-request"
  "ros_copter/SetWaypointsFromFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWaypointsFromFile-request>)))
  "Returns md5sum for a message object of type '<SetWaypointsFromFile-request>"
  "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWaypointsFromFile-request)))
  "Returns md5sum for a message object of type 'SetWaypointsFromFile-request"
  "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWaypointsFromFile-request>)))
  "Returns full string definition for message of type '<SetWaypointsFromFile-request>"
  (cl:format cl:nil "~%~%~%string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWaypointsFromFile-request)))
  "Returns full string definition for message of type 'SetWaypointsFromFile-request"
  (cl:format cl:nil "~%~%~%string filename~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWaypointsFromFile-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWaypointsFromFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWaypointsFromFile-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude SetWaypointsFromFile-response.msg.html

(cl:defclass <SetWaypointsFromFile-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SetWaypointsFromFile-response (<SetWaypointsFromFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetWaypointsFromFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetWaypointsFromFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_copter-srv:<SetWaypointsFromFile-response> is deprecated: use ros_copter-srv:SetWaypointsFromFile-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetWaypointsFromFile-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_copter-srv:success-val is deprecated.  Use ros_copter-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetWaypointsFromFile-response>) ostream)
  "Serializes a message object of type '<SetWaypointsFromFile-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetWaypointsFromFile-response>) istream)
  "Deserializes a message object of type '<SetWaypointsFromFile-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetWaypointsFromFile-response>)))
  "Returns string type for a service object of type '<SetWaypointsFromFile-response>"
  "ros_copter/SetWaypointsFromFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWaypointsFromFile-response)))
  "Returns string type for a service object of type 'SetWaypointsFromFile-response"
  "ros_copter/SetWaypointsFromFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetWaypointsFromFile-response>)))
  "Returns md5sum for a message object of type '<SetWaypointsFromFile-response>"
  "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetWaypointsFromFile-response)))
  "Returns md5sum for a message object of type 'SetWaypointsFromFile-response"
  "93a4bc4c60dc17e2a69e3fcaaa25d69d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetWaypointsFromFile-response>)))
  "Returns full string definition for message of type '<SetWaypointsFromFile-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetWaypointsFromFile-response)))
  "Returns full string definition for message of type 'SetWaypointsFromFile-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetWaypointsFromFile-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetWaypointsFromFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetWaypointsFromFile-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetWaypointsFromFile)))
  'SetWaypointsFromFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetWaypointsFromFile)))
  'SetWaypointsFromFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetWaypointsFromFile)))
  "Returns string type for a service object of type '<SetWaypointsFromFile>"
  "ros_copter/SetWaypointsFromFile")