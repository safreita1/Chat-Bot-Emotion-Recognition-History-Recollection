; Auto-generated. Do not edit!


(cl:in-package chatbot-srv)


;//! \htmlinclude FaceRecognize-request.msg.html

(cl:defclass <FaceRecognize-request> (roslisp-msg-protocol:ros-message)
  ((devid
    :reader devid
    :initarg :devid
    :type cl:integer
    :initform 0))
)

(cl:defclass FaceRecognize-request (<FaceRecognize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceRecognize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceRecognize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chatbot-srv:<FaceRecognize-request> is deprecated: use chatbot-srv:FaceRecognize-request instead.")))

(cl:ensure-generic-function 'devid-val :lambda-list '(m))
(cl:defmethod devid-val ((m <FaceRecognize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chatbot-srv:devid-val is deprecated.  Use chatbot-srv:devid instead.")
  (devid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceRecognize-request>) ostream)
  "Serializes a message object of type '<FaceRecognize-request>"
  (cl:let* ((signed (cl:slot-value msg 'devid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceRecognize-request>) istream)
  "Deserializes a message object of type '<FaceRecognize-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'devid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceRecognize-request>)))
  "Returns string type for a service object of type '<FaceRecognize-request>"
  "chatbot/FaceRecognizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceRecognize-request)))
  "Returns string type for a service object of type 'FaceRecognize-request"
  "chatbot/FaceRecognizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceRecognize-request>)))
  "Returns md5sum for a message object of type '<FaceRecognize-request>"
  "8c4e0d5dbd11845ff7ce7f7f9a92fb2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceRecognize-request)))
  "Returns md5sum for a message object of type 'FaceRecognize-request"
  "8c4e0d5dbd11845ff7ce7f7f9a92fb2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceRecognize-request>)))
  "Returns full string definition for message of type '<FaceRecognize-request>"
  (cl:format cl:nil "~%~%int32 devid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceRecognize-request)))
  "Returns full string definition for message of type 'FaceRecognize-request"
  (cl:format cl:nil "~%~%int32 devid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceRecognize-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceRecognize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceRecognize-request
    (cl:cons ':devid (devid msg))
))
;//! \htmlinclude FaceRecognize-response.msg.html

(cl:defclass <FaceRecognize-response> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass FaceRecognize-response (<FaceRecognize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceRecognize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceRecognize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chatbot-srv:<FaceRecognize-response> is deprecated: use chatbot-srv:FaceRecognize-response instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <FaceRecognize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chatbot-srv:id-val is deprecated.  Use chatbot-srv:id instead.")
  (id m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <FaceRecognize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chatbot-srv:name-val is deprecated.  Use chatbot-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceRecognize-response>) ostream)
  "Serializes a message object of type '<FaceRecognize-response>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceRecognize-response>) istream)
  "Deserializes a message object of type '<FaceRecognize-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceRecognize-response>)))
  "Returns string type for a service object of type '<FaceRecognize-response>"
  "chatbot/FaceRecognizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceRecognize-response)))
  "Returns string type for a service object of type 'FaceRecognize-response"
  "chatbot/FaceRecognizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceRecognize-response>)))
  "Returns md5sum for a message object of type '<FaceRecognize-response>"
  "8c4e0d5dbd11845ff7ce7f7f9a92fb2f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceRecognize-response)))
  "Returns md5sum for a message object of type 'FaceRecognize-response"
  "8c4e0d5dbd11845ff7ce7f7f9a92fb2f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceRecognize-response>)))
  "Returns full string definition for message of type '<FaceRecognize-response>"
  (cl:format cl:nil "~%int32 id~%string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceRecognize-response)))
  "Returns full string definition for message of type 'FaceRecognize-response"
  (cl:format cl:nil "~%int32 id~%string name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceRecognize-response>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceRecognize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceRecognize-response
    (cl:cons ':id (id msg))
    (cl:cons ':name (name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FaceRecognize)))
  'FaceRecognize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FaceRecognize)))
  'FaceRecognize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceRecognize)))
  "Returns string type for a service object of type '<FaceRecognize>"
  "chatbot/FaceRecognize")