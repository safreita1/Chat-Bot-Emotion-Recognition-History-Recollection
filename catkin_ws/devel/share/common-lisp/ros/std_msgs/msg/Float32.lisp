; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude Float32.msg.html

(cl:defclass <Float32> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass Float32 (<Float32>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float32>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float32)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<Float32> is deprecated: use std_msgs-msg:Float32 instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Float32>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float32>) ostream)
  "Serializes a message object of type '<Float32>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float32>) istream)
  "Deserializes a message object of type '<Float32>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float32>)))
  "Returns string type for a message object of type '<Float32>"
  "std_msgs/Float32")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float32)))
  "Returns string type for a message object of type 'Float32"
  "std_msgs/Float32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float32>)))
  "Returns md5sum for a message object of type '<Float32>"
  "73fcbf46b49191e672908e50842a83d4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float32)))
  "Returns md5sum for a message object of type 'Float32"
  "73fcbf46b49191e672908e50842a83d4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float32>)))
  "Returns full string definition for message of type '<Float32>"
  (cl:format cl:nil "float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float32)))
  "Returns full string definition for message of type 'Float32"
  (cl:format cl:nil "float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float32>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float32>))
  "Converts a ROS message object to a list"
  (cl:list 'Float32
    (cl:cons ':data (data msg))
))
