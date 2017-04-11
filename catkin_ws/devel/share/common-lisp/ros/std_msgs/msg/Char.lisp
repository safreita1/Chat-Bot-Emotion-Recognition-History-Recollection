; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude Char.msg.html

(cl:defclass <Char> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass Char (<Char>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Char>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Char)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<Char> is deprecated: use std_msgs-msg:Char instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Char>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Char>) ostream)
  "Serializes a message object of type '<Char>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Char>) istream)
  "Deserializes a message object of type '<Char>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Char>)))
  "Returns string type for a message object of type '<Char>"
  "std_msgs/Char")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Char)))
  "Returns string type for a message object of type 'Char"
  "std_msgs/Char")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Char>)))
  "Returns md5sum for a message object of type '<Char>"
  "1bf77f25acecdedba0e224b162199717")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Char)))
  "Returns md5sum for a message object of type 'Char"
  "1bf77f25acecdedba0e224b162199717")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Char>)))
  "Returns full string definition for message of type '<Char>"
  (cl:format cl:nil "char data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Char)))
  "Returns full string definition for message of type 'Char"
  (cl:format cl:nil "char data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Char>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Char>))
  "Converts a ROS message object to a list"
  (cl:list 'Char
    (cl:cons ':data (data msg))
))
