; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude Int16.msg.html

(cl:defclass <Int16> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Int16 (<Int16>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int16>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int16)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<Int16> is deprecated: use std_msgs-msg:Int16 instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Int16>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int16>) ostream)
  "Serializes a message object of type '<Int16>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int16>) istream)
  "Deserializes a message object of type '<Int16>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int16>)))
  "Returns string type for a message object of type '<Int16>"
  "std_msgs/Int16")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int16)))
  "Returns string type for a message object of type 'Int16"
  "std_msgs/Int16")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int16>)))
  "Returns md5sum for a message object of type '<Int16>"
  "8524586e34fbd7cb1c08c5f5f1ca0e57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int16)))
  "Returns md5sum for a message object of type 'Int16"
  "8524586e34fbd7cb1c08c5f5f1ca0e57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int16>)))
  "Returns full string definition for message of type '<Int16>"
  (cl:format cl:nil "int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int16)))
  "Returns full string definition for message of type 'Int16"
  (cl:format cl:nil "int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int16>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int16>))
  "Converts a ROS message object to a list"
  (cl:list 'Int16
    (cl:cons ':data (data msg))
))
