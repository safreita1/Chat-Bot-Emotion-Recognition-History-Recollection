; Auto-generated. Do not edit!


(cl:in-package chatbot-srv)


;//! \htmlinclude Context-request.msg.html

(cl:defclass <Context-request> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:string
    :initform ""))
)

(cl:defclass Context-request (<Context-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Context-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Context-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chatbot-srv:<Context-request> is deprecated: use chatbot-srv:Context-request instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <Context-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chatbot-srv:input-val is deprecated.  Use chatbot-srv:input instead.")
  (input m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Context-request>) ostream)
  "Serializes a message object of type '<Context-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Context-request>) istream)
  "Deserializes a message object of type '<Context-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Context-request>)))
  "Returns string type for a service object of type '<Context-request>"
  "chatbot/ContextRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Context-request)))
  "Returns string type for a service object of type 'Context-request"
  "chatbot/ContextRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Context-request>)))
  "Returns md5sum for a message object of type '<Context-request>"
  "d4d3081274ba465e7c9b07013f8d6793")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Context-request)))
  "Returns md5sum for a message object of type 'Context-request"
  "d4d3081274ba465e7c9b07013f8d6793")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Context-request>)))
  "Returns full string definition for message of type '<Context-request>"
  (cl:format cl:nil "string input~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Context-request)))
  "Returns full string definition for message of type 'Context-request"
  (cl:format cl:nil "string input~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Context-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Context-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Context-request
    (cl:cons ':input (input msg))
))
;//! \htmlinclude Context-response.msg.html

(cl:defclass <Context-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:string
    :initform "")
   (correlation
    :reader correlation
    :initarg :correlation
    :type cl:float
    :initform 0.0))
)

(cl:defclass Context-response (<Context-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Context-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Context-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chatbot-srv:<Context-response> is deprecated: use chatbot-srv:Context-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <Context-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chatbot-srv:response-val is deprecated.  Use chatbot-srv:response instead.")
  (response m))

(cl:ensure-generic-function 'correlation-val :lambda-list '(m))
(cl:defmethod correlation-val ((m <Context-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chatbot-srv:correlation-val is deprecated.  Use chatbot-srv:correlation instead.")
  (correlation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Context-response>) ostream)
  "Serializes a message object of type '<Context-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'response))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'correlation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Context-response>) istream)
  "Deserializes a message object of type '<Context-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'response) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'response) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'correlation) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Context-response>)))
  "Returns string type for a service object of type '<Context-response>"
  "chatbot/ContextResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Context-response)))
  "Returns string type for a service object of type 'Context-response"
  "chatbot/ContextResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Context-response>)))
  "Returns md5sum for a message object of type '<Context-response>"
  "d4d3081274ba465e7c9b07013f8d6793")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Context-response)))
  "Returns md5sum for a message object of type 'Context-response"
  "d4d3081274ba465e7c9b07013f8d6793")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Context-response>)))
  "Returns full string definition for message of type '<Context-response>"
  (cl:format cl:nil "~%string response~%float32 correlation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Context-response)))
  "Returns full string definition for message of type 'Context-response"
  (cl:format cl:nil "~%string response~%float32 correlation~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Context-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'response))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Context-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Context-response
    (cl:cons ':response (response msg))
    (cl:cons ':correlation (correlation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Context)))
  'Context-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Context)))
  'Context-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Context)))
  "Returns string type for a service object of type '<Context>"
  "chatbot/Context")