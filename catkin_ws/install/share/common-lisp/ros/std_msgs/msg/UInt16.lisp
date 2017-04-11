; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude UInt16.msg.html

(cl:defclass <UInt16> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass UInt16 (<UInt16>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UInt16>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UInt16)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<UInt16> is deprecated: use std_msgs-msg:UInt16 instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <UInt16>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UInt16>) ostream)
  "Serializes a message object of type '<UInt16>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UInt16>) istream)
  "Deserializes a message object of type '<UInt16>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UInt16>)))
  "Returns string type for a message object of type '<UInt16>"
  "std_msgs/UInt16")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UInt16)))
  "Returns string type for a message object of type 'UInt16"
  "std_msgs/UInt16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UInt16>)))
  "Returns md5sum for a message object of type '<UInt16>"
  "1df79edf208b629fe6b81923a544552d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UInt16)))
  "Returns md5sum for a message object of type 'UInt16"
  "1df79edf208b629fe6b81923a544552d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UInt16>)))
  "Returns full string definition for message of type '<UInt16>"
  (cl:format cl:nil "uint16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UInt16)))
  "Returns full string definition for message of type 'UInt16"
  (cl:format cl:nil "uint16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UInt16>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UInt16>))
  "Converts a ROS message object to a list"
  (cl:list 'UInt16
    (cl:cons ':data (data msg))
))
