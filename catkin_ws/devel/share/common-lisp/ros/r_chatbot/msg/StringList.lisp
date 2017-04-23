; Auto-generated. Do not edit!


(cl:in-package r_chatbot-msg)


;//! \htmlinclude StringList.msg.html

(cl:defclass <StringList> (roslisp-msg-protocol:ros-message)
  ((stringlist
    :reader stringlist
    :initarg :stringlist
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass StringList (<StringList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StringList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StringList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name r_chatbot-msg:<StringList> is deprecated: use r_chatbot-msg:StringList instead.")))

(cl:ensure-generic-function 'stringlist-val :lambda-list '(m))
(cl:defmethod stringlist-val ((m <StringList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader r_chatbot-msg:stringlist-val is deprecated.  Use r_chatbot-msg:stringlist instead.")
  (stringlist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StringList>) ostream)
  "Serializes a message object of type '<StringList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stringlist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'stringlist))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StringList>) istream)
  "Deserializes a message object of type '<StringList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stringlist) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stringlist)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StringList>)))
  "Returns string type for a message object of type '<StringList>"
  "r_chatbot/StringList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StringList)))
  "Returns string type for a message object of type 'StringList"
  "r_chatbot/StringList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StringList>)))
  "Returns md5sum for a message object of type '<StringList>"
  "8a7f5c3a3a4d5ed6a386d96d41c2e3aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StringList)))
  "Returns md5sum for a message object of type 'StringList"
  "8a7f5c3a3a4d5ed6a386d96d41c2e3aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StringList>)))
  "Returns full string definition for message of type '<StringList>"
  (cl:format cl:nil "string[] stringlist~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StringList)))
  "Returns full string definition for message of type 'StringList"
  (cl:format cl:nil "string[] stringlist~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StringList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stringlist) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StringList>))
  "Converts a ROS message object to a list"
  (cl:list 'StringList
    (cl:cons ':stringlist (stringlist msg))
))
