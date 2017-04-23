; Auto-generated. Do not edit!


(cl:in-package r_chatbot-srv)


;//! \htmlinclude GetTopics-request.msg.html

(cl:defclass <GetTopics-request> (roslisp-msg-protocol:ros-message)
  ((input_sentence
    :reader input_sentence
    :initarg :input_sentence
    :type cl:string
    :initform ""))
)

(cl:defclass GetTopics-request (<GetTopics-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTopics-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTopics-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r_chatbot-srv:<GetTopics-request> is deprecated: use r_chatbot-srv:GetTopics-request instead.")))

(cl:ensure-generic-function 'input_sentence-val :lambda-list '(m))
(cl:defmethod input_sentence-val ((m <GetTopics-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r_chatbot-srv:input_sentence-val is deprecated.  Use r_chatbot-srv:input_sentence instead.")
  (input_sentence m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTopics-request>) ostream)
  "Serializes a message object of type '<GetTopics-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input_sentence))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input_sentence))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTopics-request>) istream)
  "Deserializes a message object of type '<GetTopics-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_sentence) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input_sentence) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTopics-request>)))
  "Returns string type for a service object of type '<GetTopics-request>"
  "r_chatbot/GetTopicsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTopics-request)))
  "Returns string type for a service object of type 'GetTopics-request"
  "r_chatbot/GetTopicsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTopics-request>)))
  "Returns md5sum for a message object of type '<GetTopics-request>"
  "879dc9a407babc475af0cd8d1b6e5981")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTopics-request)))
  "Returns md5sum for a message object of type 'GetTopics-request"
  "879dc9a407babc475af0cd8d1b6e5981")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTopics-request>)))
  "Returns full string definition for message of type '<GetTopics-request>"
  (cl:format cl:nil "string input_sentence~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTopics-request)))
  "Returns full string definition for message of type 'GetTopics-request"
  (cl:format cl:nil "string input_sentence~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTopics-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input_sentence))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTopics-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTopics-request
    (cl:cons ':input_sentence (input_sentence msg))
))
;//! \htmlinclude GetTopics-response.msg.html

(cl:defclass <GetTopics-response> (roslisp-msg-protocol:ros-message)
  ((top_topics
    :reader top_topics
    :initarg :top_topics
    :type r_chatbot-msg:StringList
    :initform (cl:make-instance 'r_chatbot-msg:StringList)))
)

(cl:defclass GetTopics-response (<GetTopics-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetTopics-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetTopics-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r_chatbot-srv:<GetTopics-response> is deprecated: use r_chatbot-srv:GetTopics-response instead.")))

(cl:ensure-generic-function 'top_topics-val :lambda-list '(m))
(cl:defmethod top_topics-val ((m <GetTopics-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r_chatbot-srv:top_topics-val is deprecated.  Use r_chatbot-srv:top_topics instead.")
  (top_topics m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetTopics-response>) ostream)
  "Serializes a message object of type '<GetTopics-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'top_topics) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetTopics-response>) istream)
  "Deserializes a message object of type '<GetTopics-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'top_topics) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetTopics-response>)))
  "Returns string type for a service object of type '<GetTopics-response>"
  "r_chatbot/GetTopicsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTopics-response)))
  "Returns string type for a service object of type 'GetTopics-response"
  "r_chatbot/GetTopicsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetTopics-response>)))
  "Returns md5sum for a message object of type '<GetTopics-response>"
  "879dc9a407babc475af0cd8d1b6e5981")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetTopics-response)))
  "Returns md5sum for a message object of type 'GetTopics-response"
  "879dc9a407babc475af0cd8d1b6e5981")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetTopics-response>)))
  "Returns full string definition for message of type '<GetTopics-response>"
  (cl:format cl:nil "~%StringList top_topics~%~%================================================================================~%MSG: r_chatbot/StringList~%string[] stringlist~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetTopics-response)))
  "Returns full string definition for message of type 'GetTopics-response"
  (cl:format cl:nil "~%StringList top_topics~%~%================================================================================~%MSG: r_chatbot/StringList~%string[] stringlist~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetTopics-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'top_topics))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetTopics-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetTopics-response
    (cl:cons ':top_topics (top_topics msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetTopics)))
  'GetTopics-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetTopics)))
  'GetTopics-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetTopics)))
  "Returns string type for a service object of type '<GetTopics>"
  "r_chatbot/GetTopics")