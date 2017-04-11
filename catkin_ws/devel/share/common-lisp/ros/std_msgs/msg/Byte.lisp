; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude Byte.msg.html

(cl:defclass <Byte> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass Byte (<Byte>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Byte>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Byte)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<Byte> is deprecated: use std_msgs-msg:Byte instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Byte>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Byte>) ostream)
  "Serializes a message object of type '<Byte>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Byte>) istream)
  "Deserializes a message object of type '<Byte>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Byte>)))
  "Returns string type for a message object of type '<Byte>"
  "std_msgs/Byte")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Byte)))
  "Returns string type for a message object of type 'Byte"
  "std_msgs/Byte")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Byte>)))
  "Returns md5sum for a message object of type '<Byte>"
  "ad736a2e8818154c487bb80fe42ce43b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Byte)))
  "Returns md5sum for a message object of type 'Byte"
  "ad736a2e8818154c487bb80fe42ce43b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Byte>)))
  "Returns full string definition for message of type '<Byte>"
  (cl:format cl:nil "byte data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Byte)))
  "Returns full string definition for message of type 'Byte"
  (cl:format cl:nil "byte data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Byte>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Byte>))
  "Converts a ROS message object to a list"
  (cl:list 'Byte
    (cl:cons ':data (data msg))
))
