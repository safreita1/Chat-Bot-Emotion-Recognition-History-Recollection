; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude Int64.msg.html

(cl:defclass <Int64> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass Int64 (<Int64>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int64>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int64)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<Int64> is deprecated: use std_msgs-msg:Int64 instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Int64>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int64>) ostream)
  "Serializes a message object of type '<Int64>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int64>) istream)
  "Deserializes a message object of type '<Int64>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int64>)))
  "Returns string type for a message object of type '<Int64>"
  "std_msgs/Int64")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int64)))
  "Returns string type for a message object of type 'Int64"
  "std_msgs/Int64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int64>)))
  "Returns md5sum for a message object of type '<Int64>"
  "34add168574510e6e17f5d23ecc077ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int64)))
  "Returns md5sum for a message object of type 'Int64"
  "34add168574510e6e17f5d23ecc077ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int64>)))
  "Returns full string definition for message of type '<Int64>"
  (cl:format cl:nil "int64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int64)))
  "Returns full string definition for message of type 'Int64"
  (cl:format cl:nil "int64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int64>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int64>))
  "Converts a ROS message object to a list"
  (cl:list 'Int64
    (cl:cons ':data (data msg))
))
