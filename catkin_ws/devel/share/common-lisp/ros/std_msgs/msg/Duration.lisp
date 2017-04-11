; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude Duration.msg.html

(cl:defclass <Duration> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:real
    :initform 0))
)

(cl:defclass Duration (<Duration>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Duration>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Duration)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<Duration> is deprecated: use std_msgs-msg:Duration instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <Duration>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data-val is deprecated.  Use std_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Duration>) ostream)
  "Serializes a message object of type '<Duration>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'data)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'data) (cl:floor (cl:slot-value msg 'data)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Duration>) istream)
  "Deserializes a message object of type '<Duration>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Duration>)))
  "Returns string type for a message object of type '<Duration>"
  "std_msgs/Duration")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Duration)))
  "Returns string type for a message object of type 'Duration"
  "std_msgs/Duration")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Duration>)))
  "Returns md5sum for a message object of type '<Duration>"
  "3e286caf4241d664e55f3ad380e2ae46")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Duration)))
  "Returns md5sum for a message object of type 'Duration"
  "3e286caf4241d664e55f3ad380e2ae46")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Duration>)))
  "Returns full string definition for message of type '<Duration>"
  (cl:format cl:nil "duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Duration)))
  "Returns full string definition for message of type 'Duration"
  (cl:format cl:nil "duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Duration>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Duration>))
  "Converts a ROS message object to a list"
  (cl:list 'Duration
    (cl:cons ':data (data msg))
))
