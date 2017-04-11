; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude Bool.msg.html

(cl:defclass <Bool> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Bool (<Bool>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bool>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bool)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<Bool> is deprecated: use std_msgs-msg:Bool instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Bool>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bool>) ostream)
  "Serializes a message object of type '<Bool>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'data) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bool>) istream)
  "Deserializes a message object of type '<Bool>"
    (cl:setf (cl:slot-value msg 'data) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bool>)))
  "Returns string type for a message object of type '<Bool>"
  "std_msgs/Bool")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bool)))
  "Returns string type for a message object of type 'Bool"
  "std_msgs/Bool")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bool>)))
  "Returns md5sum for a message object of type '<Bool>"
  "8b94c1b53db61fb6aed406028ad6332a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bool)))
  "Returns md5sum for a message object of type 'Bool"
  "8b94c1b53db61fb6aed406028ad6332a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bool>)))
  "Returns full string definition for message of type '<Bool>"
  (cl:format cl:nil "bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bool)))
  "Returns full string definition for message of type 'Bool"
  (cl:format cl:nil "bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bool>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bool>))
  "Converts a ROS message object to a list"
  (cl:list 'Bool
    (cl:cons ':data (data msg))
))
