; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude Float64.msg.html

(cl:defclass <Float64> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:float
    :initform 0.0))
)

(cl:defclass Float64 (<Float64>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Float64>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Float64)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<Float64> is deprecated: use std_msgs-msg:Float64 instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Float64>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Float64>) ostream)
  "Serializes a message object of type '<Float64>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Float64>) istream)
  "Deserializes a message object of type '<Float64>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'data) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Float64>)))
  "Returns string type for a message object of type '<Float64>"
  "std_msgs/Float64")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Float64)))
  "Returns string type for a message object of type 'Float64"
  "std_msgs/Float64")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Float64>)))
  "Returns md5sum for a message object of type '<Float64>"
  "fdb28210bfa9d7c91146260178d9a584")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Float64)))
  "Returns md5sum for a message object of type 'Float64"
  "fdb28210bfa9d7c91146260178d9a584")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Float64>)))
  "Returns full string definition for message of type '<Float64>"
  (cl:format cl:nil "float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Float64)))
  "Returns full string definition for message of type 'Float64"
  (cl:format cl:nil "float64 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Float64>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Float64>))
  "Converts a ROS message object to a list"
  (cl:list 'Float64
    (cl:cons ':data (data msg))
))
