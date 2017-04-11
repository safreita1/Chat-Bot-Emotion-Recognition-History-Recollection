; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude Int32.msg.html

(cl:defclass <Int32> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass Int32 (<Int32>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Int32>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Int32)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<Int32> is deprecated: use std_msgs-msg:Int32 instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Int32>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Int32>) ostream)
  "Serializes a message object of type '<Int32>"
  (cl:let* ((signed (cl:slot-value msg 'data)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Int32>) istream)
  "Deserializes a message object of type '<Int32>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Int32>)))
  "Returns string type for a message object of type '<Int32>"
  "std_msgs/Int32")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Int32)))
  "Returns string type for a message object of type 'Int32"
  "std_msgs/Int32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Int32>)))
  "Returns md5sum for a message object of type '<Int32>"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Int32)))
  "Returns md5sum for a message object of type 'Int32"
  "da5909fbe378aeaf85e547e830cc1bb7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Int32>)))
  "Returns full string definition for message of type '<Int32>"
  (cl:format cl:nil "int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Int32)))
  "Returns full string definition for message of type 'Int32"
  (cl:format cl:nil "int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Int32>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Int32>))
  "Converts a ROS message object to a list"
  (cl:list 'Int32
    (cl:cons ':data (data msg))
))
