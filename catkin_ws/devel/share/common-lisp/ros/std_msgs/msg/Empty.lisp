; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude Empty.msg.html

(cl:defclass <Empty> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass Empty (<Empty>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Empty>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Empty)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<Empty> is deprecated: use std_msgs-msg:Empty instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Empty>) ostream)
  "Serializes a message object of type '<Empty>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Empty>) istream)
  "Deserializes a message object of type '<Empty>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Empty>)))
  "Returns string type for a message object of type '<Empty>"
  "std_msgs/Empty")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Empty)))
  "Returns string type for a message object of type 'Empty"
  "std_msgs/Empty")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Empty>)))
  "Returns md5sum for a message object of type '<Empty>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Empty)))
  "Returns md5sum for a message object of type 'Empty"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Empty>)))
  "Returns full string definition for message of type '<Empty>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Empty)))
  "Returns full string definition for message of type 'Empty"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Empty>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Empty>))
  "Converts a ROS message object to a list"
  (cl:list 'Empty
))
