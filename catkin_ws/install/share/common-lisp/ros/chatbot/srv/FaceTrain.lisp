; Auto-generated. Do not edit!


(cl:in-package chatbot-srv)


;//! \htmlinclude FaceTrain-request.msg.html

(cl:defclass <FaceTrain-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (devid
    :reader devid
    :initarg :devid
    :type cl:integer
    :initform 0))
)

(cl:defclass FaceTrain-request (<FaceTrain-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceTrain-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceTrain-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chatbot-srv:<FaceTrain-request> is deprecated: use chatbot-srv:FaceTrain-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <FaceTrain-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chatbot-srv:name-val is deprecated.  Use chatbot-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'devid-val :lambda-list '(m))
(cl:defmethod devid-val ((m <FaceTrain-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chatbot-srv:devid-val is deprecated.  Use chatbot-srv:devid instead.")
  (devid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceTrain-request>) ostream)
  "Serializes a message object of type '<FaceTrain-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'devid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceTrain-request>) istream)
  "Deserializes a message object of type '<FaceTrain-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'devid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceTrain-request>)))
  "Returns string type for a service object of type '<FaceTrain-request>"
  "chatbot/FaceTrainRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceTrain-request)))
  "Returns string type for a service object of type 'FaceTrain-request"
  "chatbot/FaceTrainRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceTrain-request>)))
  "Returns md5sum for a message object of type '<FaceTrain-request>"
  "b390e99f3af36e07f2b7d5e1bf39f6f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceTrain-request)))
  "Returns md5sum for a message object of type 'FaceTrain-request"
  "b390e99f3af36e07f2b7d5e1bf39f6f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceTrain-request>)))
  "Returns full string definition for message of type '<FaceTrain-request>"
  (cl:format cl:nil "~%~%string name~%int32 devid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceTrain-request)))
  "Returns full string definition for message of type 'FaceTrain-request"
  (cl:format cl:nil "~%~%string name~%int32 devid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceTrain-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceTrain-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceTrain-request
    (cl:cons ':name (name msg))
    (cl:cons ':devid (devid msg))
))
;//! \htmlinclude FaceTrain-response.msg.html

(cl:defclass <FaceTrain-response> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass FaceTrain-response (<FaceTrain-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceTrain-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceTrain-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chatbot-srv:<FaceTrain-response> is deprecated: use chatbot-srv:FaceTrain-response instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <FaceTrain-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chatbot-srv:id-val is deprecated.  Use chatbot-srv:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceTrain-response>) ostream)
  "Serializes a message object of type '<FaceTrain-response>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceTrain-response>) istream)
  "Deserializes a message object of type '<FaceTrain-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceTrain-response>)))
  "Returns string type for a service object of type '<FaceTrain-response>"
  "chatbot/FaceTrainResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceTrain-response)))
  "Returns string type for a service object of type 'FaceTrain-response"
  "chatbot/FaceTrainResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceTrain-response>)))
  "Returns md5sum for a message object of type '<FaceTrain-response>"
  "b390e99f3af36e07f2b7d5e1bf39f6f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceTrain-response)))
  "Returns md5sum for a message object of type 'FaceTrain-response"
  "b390e99f3af36e07f2b7d5e1bf39f6f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceTrain-response>)))
  "Returns full string definition for message of type '<FaceTrain-response>"
  (cl:format cl:nil "~%int32 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceTrain-response)))
  "Returns full string definition for message of type 'FaceTrain-response"
  (cl:format cl:nil "~%int32 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceTrain-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceTrain-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceTrain-response
    (cl:cons ':id (id msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FaceTrain)))
  'FaceTrain-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FaceTrain)))
  'FaceTrain-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceTrain)))
  "Returns string type for a service object of type '<FaceTrain>"
  "chatbot/FaceTrain")