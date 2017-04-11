; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude Int8.msg.html

(cl:defclass <Int8> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Int8 (<Int8>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int8>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int8)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<Int8> is deprecated: use std_msgs-msg:Int8 instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Int8>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int8>) ostream)
  "Serializes a message object of type '<Int8>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int8>) istream)
  "Deserializes a message object of type '<Int8>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int8>)))
  "Returns string type for a message object of type '<Int8>"
  "std_msgs/Int8")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int8)))
  "Returns string type for a message object of type 'Int8"
  "std_msgs/Int8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int8>)))
  "Returns md5sum for a message object of type '<Int8>"
  "27ffa0c9c4b8fb8492252bcad9e5c57b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int8)))
  "Returns md5sum for a message object of type 'Int8"
  "27ffa0c9c4b8fb8492252bcad9e5c57b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int8>)))
  "Returns full string definition for message of type '<Int8>"
  (cl:format cl:nil "int8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int8)))
  "Returns full string definition for message of type 'Int8"
  (cl:format cl:nil "int8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int8>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int8>))
  "Converts a ROS message object to a list"
  (cl:list 'Int8
    (cl:cons ':data (data msg))
))
