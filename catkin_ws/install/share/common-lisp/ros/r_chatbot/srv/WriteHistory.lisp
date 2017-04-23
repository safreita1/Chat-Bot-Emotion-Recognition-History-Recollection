; Auto-generated. Do not edit!


(cl:in-package r_chatbot-srv)


;//! \htmlinclude WriteHistory-request.msg.html

(cl:defclass <WriteHistory-request> (roslisp-msg-protocol:ros-message)
  ((username
    :reader username
    :initarg :username
    :type cl:string
    :initform ""))
)

(cl:defclass WriteHistory-request (<WriteHistory-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteHistory-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteHistory-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r_chatbot-srv:<WriteHistory-request> is deprecated: use r_chatbot-srv:WriteHistory-request instead.")))

(cl:ensure-generic-function 'username-val :lambda-list '(m))
(cl:defmethod username-val ((m <WriteHistory-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r_chatbot-srv:username-val is deprecated.  Use r_chatbot-srv:username instead.")
  (username m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteHistory-request>) ostream)
  "Serializes a message object of type '<WriteHistory-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'username))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'username))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteHistory-request>) istream)
  "Deserializes a message object of type '<WriteHistory-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'username) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'username) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteHistory-request>)))
  "Returns string type for a service object of type '<WriteHistory-request>"
  "r_chatbot/WriteHistoryRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteHistory-request)))
  "Returns string type for a service object of type 'WriteHistory-request"
  "r_chatbot/WriteHistoryRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteHistory-request>)))
  "Returns md5sum for a message object of type '<WriteHistory-request>"
  "fa3ccd00a43e07e133259b77ca345a97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteHistory-request)))
  "Returns md5sum for a message object of type 'WriteHistory-request"
  "fa3ccd00a43e07e133259b77ca345a97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteHistory-request>)))
  "Returns full string definition for message of type '<WriteHistory-request>"
  (cl:format cl:nil "string username~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteHistory-request)))
  "Returns full string definition for message of type 'WriteHistory-request"
  (cl:format cl:nil "string username~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteHistory-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'username))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteHistory-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteHistory-request
    (cl:cons ':username (username msg))
))
;//! \htmlinclude WriteHistory-response.msg.html

(cl:defclass <WriteHistory-response> (roslisp-msg-protocol:ros-message)
  ((retval
    :reader retval
    :initarg :retval
    :type cl:integer
    :initform 0))
)

(cl:defclass WriteHistory-response (<WriteHistory-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WriteHistory-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WriteHistory-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r_chatbot-srv:<WriteHistory-response> is deprecated: use r_chatbot-srv:WriteHistory-response instead.")))

(cl:ensure-generic-function 'retval-val :lambda-list '(m))
(cl:defmethod retval-val ((m <WriteHistory-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r_chatbot-srv:retval-val is deprecated.  Use r_chatbot-srv:retval instead.")
  (retval m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WriteHistory-response>) ostream)
  "Serializes a message object of type '<WriteHistory-response>"
  (cl:let* ((signed (cl:slot-value msg 'retval)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WriteHistory-response>) istream)
  "Deserializes a message object of type '<WriteHistory-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'retval) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WriteHistory-response>)))
  "Returns string type for a service object of type '<WriteHistory-response>"
  "r_chatbot/WriteHistoryResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteHistory-response)))
  "Returns string type for a service object of type 'WriteHistory-response"
  "r_chatbot/WriteHistoryResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WriteHistory-response>)))
  "Returns md5sum for a message object of type '<WriteHistory-response>"
  "fa3ccd00a43e07e133259b77ca345a97")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WriteHistory-response)))
  "Returns md5sum for a message object of type 'WriteHistory-response"
  "fa3ccd00a43e07e133259b77ca345a97")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WriteHistory-response>)))
  "Returns full string definition for message of type '<WriteHistory-response>"
  (cl:format cl:nil "~%int32 retval~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WriteHistory-response)))
  "Returns full string definition for message of type 'WriteHistory-response"
  (cl:format cl:nil "~%int32 retval~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WriteHistory-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WriteHistory-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WriteHistory-response
    (cl:cons ':retval (retval msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WriteHistory)))
  'WriteHistory-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WriteHistory)))
  'WriteHistory-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WriteHistory)))
  "Returns string type for a service object of type '<WriteHistory>"
  "r_chatbot/WriteHistory")