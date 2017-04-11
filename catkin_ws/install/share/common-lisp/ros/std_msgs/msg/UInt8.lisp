; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude UInt8.msg.html

(cl:defclass <UInt8> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UInt8 (<UInt8>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UInt8>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UInt8)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<UInt8> is deprecated: use std_msgs-msg:UInt8 instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <UInt8>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UInt8>) ostream)
  "Serializes a message object of type '<UInt8>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UInt8>) istream)
  "Deserializes a message object of type '<UInt8>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UInt8>)))
  "Returns string type for a message object of type '<UInt8>"
  "std_msgs/UInt8")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UInt8)))
  "Returns string type for a message object of type 'UInt8"
  "std_msgs/UInt8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UInt8>)))
  "Returns md5sum for a message object of type '<UInt8>"
  "7c8164229e7d2c17eb95e9231617fdee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UInt8)))
  "Returns md5sum for a message object of type 'UInt8"
  "7c8164229e7d2c17eb95e9231617fdee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UInt8>)))
  "Returns full string definition for message of type '<UInt8>"
  (cl:format cl:nil "uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UInt8)))
  "Returns full string definition for message of type 'UInt8"
  (cl:format cl:nil "uint8 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UInt8>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UInt8>))
  "Converts a ROS message object to a list"
  (cl:list 'UInt8
    (cl:cons ':data (data msg))
))
