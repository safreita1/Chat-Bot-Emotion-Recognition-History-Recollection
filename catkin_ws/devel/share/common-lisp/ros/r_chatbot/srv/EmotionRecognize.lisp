; Auto-generated. Do not edit!


(cl:in-package r_chatbot-srv)


;//! \htmlinclude EmotionRecognize-request.msg.html

(cl:defclass <EmotionRecognize-request> (roslisp-msg-protocol:ros-message)
  ((devid
    :reader devid
    :initarg :devid
    :type cl:integer
    :initform 0))
)

(cl:defclass EmotionRecognize-request (<EmotionRecognize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmotionRecognize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmotionRecognize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r_chatbot-srv:<EmotionRecognize-request> is deprecated: use r_chatbot-srv:EmotionRecognize-request instead.")))

(cl:ensure-generic-function 'devid-val :lambda-list '(m))
(cl:defmethod devid-val ((m <EmotionRecognize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r_chatbot-srv:devid-val is deprecated.  Use r_chatbot-srv:devid instead.")
  (devid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmotionRecognize-request>) ostream)
  "Serializes a message object of type '<EmotionRecognize-request>"
  (cl:let* ((signed (cl:slot-value msg 'devid)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmotionRecognize-request>) istream)
  "Deserializes a message object of type '<EmotionRecognize-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'devid) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmotionRecognize-request>)))
  "Returns string type for a service object of type '<EmotionRecognize-request>"
  "r_chatbot/EmotionRecognizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmotionRecognize-request)))
  "Returns string type for a service object of type 'EmotionRecognize-request"
  "r_chatbot/EmotionRecognizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmotionRecognize-request>)))
  "Returns md5sum for a message object of type '<EmotionRecognize-request>"
  "6903c14b3c9a61ea8a677558ebfcc4e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmotionRecognize-request)))
  "Returns md5sum for a message object of type 'EmotionRecognize-request"
  "6903c14b3c9a61ea8a677558ebfcc4e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmotionRecognize-request>)))
  "Returns full string definition for message of type '<EmotionRecognize-request>"
  (cl:format cl:nil "int32 devid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmotionRecognize-request)))
  "Returns full string definition for message of type 'EmotionRecognize-request"
  (cl:format cl:nil "int32 devid~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmotionRecognize-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmotionRecognize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmotionRecognize-request
    (cl:cons ':devid (devid msg))
))
;//! \htmlinclude EmotionRecognize-response.msg.html

(cl:defclass <EmotionRecognize-response> (roslisp-msg-protocol:ros-message)
  ((emotion
    :reader emotion
    :initarg :emotion
    :type cl:string
    :initform ""))
)

(cl:defclass EmotionRecognize-response (<EmotionRecognize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmotionRecognize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmotionRecognize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r_chatbot-srv:<EmotionRecognize-response> is deprecated: use r_chatbot-srv:EmotionRecognize-response instead.")))

(cl:ensure-generic-function 'emotion-val :lambda-list '(m))
(cl:defmethod emotion-val ((m <EmotionRecognize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r_chatbot-srv:emotion-val is deprecated.  Use r_chatbot-srv:emotion instead.")
  (emotion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmotionRecognize-response>) ostream)
  "Serializes a message object of type '<EmotionRecognize-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'emotion))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'emotion))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmotionRecognize-response>) istream)
  "Deserializes a message object of type '<EmotionRecognize-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'emotion) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'emotion) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmotionRecognize-response>)))
  "Returns string type for a service object of type '<EmotionRecognize-response>"
  "r_chatbot/EmotionRecognizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmotionRecognize-response)))
  "Returns string type for a service object of type 'EmotionRecognize-response"
  "r_chatbot/EmotionRecognizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmotionRecognize-response>)))
  "Returns md5sum for a message object of type '<EmotionRecognize-response>"
  "6903c14b3c9a61ea8a677558ebfcc4e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmotionRecognize-response)))
  "Returns md5sum for a message object of type 'EmotionRecognize-response"
  "6903c14b3c9a61ea8a677558ebfcc4e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmotionRecognize-response>)))
  "Returns full string definition for message of type '<EmotionRecognize-response>"
  (cl:format cl:nil "~%string emotion~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmotionRecognize-response)))
  "Returns full string definition for message of type 'EmotionRecognize-response"
  (cl:format cl:nil "~%string emotion~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmotionRecognize-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'emotion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmotionRecognize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmotionRecognize-response
    (cl:cons ':emotion (emotion msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmotionRecognize)))
  'EmotionRecognize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmotionRecognize)))
  'EmotionRecognize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmotionRecognize)))
  "Returns string type for a service object of type '<EmotionRecognize>"
  "r_chatbot/EmotionRecognize")