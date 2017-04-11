; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude UInt64.msg.html

(cl:defclass <UInt64> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass UInt64 (<UInt64>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UInt64>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UInt64)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<UInt64> is deprecated: use std_msgs-msg:UInt64 instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <UInt64>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UInt64>) ostream)
  "Serializes a message object of type '<UInt64>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UInt64>) istream)
  "Deserializes a message object of type '<UInt64>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UInt64>)))
  "Returns string type for a message object of type '<UInt64>"
  "std_msgs/UInt64")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UInt64)))
  "Returns string type for a message object of type 'UInt64"
  "std_msgs/UInt64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UInt64>)))
  "Returns md5sum for a message object of type '<UInt64>"
  "1b2a79973e8bf53d7b53acb71299cb57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UInt64)))
  "Returns md5sum for a message object of type 'UInt64"
  "1b2a79973e8bf53d7b53acb71299cb57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UInt64>)))
  "Returns full string definition for message of type '<UInt64>"
  (cl:format cl:nil "uint64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UInt64)))
  "Returns full string definition for message of type 'UInt64"
  (cl:format cl:nil "uint64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UInt64>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UInt64>))
  "Converts a ROS message object to a list"
  (cl:list 'UInt64
    (cl:cons ':data (data msg))
))
