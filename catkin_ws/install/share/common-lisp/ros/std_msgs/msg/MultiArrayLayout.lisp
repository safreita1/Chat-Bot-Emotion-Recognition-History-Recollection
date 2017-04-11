; Auto-generated. Do not edit!


(cl:in-package std_msgs-msg)


;//! \htmlinclude MultiArrayLayout.msg.html

(cl:defclass <MultiArrayLayout> (roslisp-msg-protocol:ros-message)
  ((dim
    :reader dim
    :initarg :dim
    :type (cl:vector std_msgs-msg:MultiArrayDimension)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:MultiArrayDimension :initial-element (cl:make-instance 'std_msgs-msg:MultiArrayDimension)))
   (data_offset
    :reader data_offset
    :initarg :data_offset
    :type cl:integer
    :initform 0))
)

(cl:defclass MultiArrayLayout (<MultiArrayLayout>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiArrayLayout>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiArrayLayout)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name std_msgs-msg:<MultiArrayLayout> is deprecated: use std_msgs-msg:MultiArrayLayout instead.")))

(cl:ensure-generic-function 'dim-val :lambda-list '(m))
(cl:defmethod dim-val ((m <MultiArrayLayout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:dim-val is deprecated.  Use std_msgs-msg:dim instead.")
  (dim m))

(cl:ensure-generic-function 'data_offset-val :lambda-list '(m))
(cl:defmethod data_offset-val ((m <MultiArrayLayout>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader std_msgs-msg:data_offset-val is deprecated.  Use std_msgs-msg:data_offset instead.")
  (data_offset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiArrayLayout>) ostream)
  "Serializes a message object of type '<MultiArrayLayout>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dim))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dim))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data_offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data_offset)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data_offset)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiArrayLayout>) istream)
  "Deserializes a message object of type '<MultiArrayLayout>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dim) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dim)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:MultiArrayDimension))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data_offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'data_offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'data_offset)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'data_offset)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiArrayLayout>)))
  "Returns string type for a message object of type '<MultiArrayLayout>"
  "std_msgs/MultiArrayLayout")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiArrayLayout)))
  "Returns string type for a message object of type 'MultiArrayLayout"
  "std_msgs/MultiArrayLayout")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiArrayLayout>)))
  "Returns md5sum for a message object of type '<MultiArrayLayout>"
  "0fed2a11c13e11c5571b4e2a995a91a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiArrayLayout)))
  "Returns md5sum for a message object of type 'MultiArrayLayout"
  "0fed2a11c13e11c5571b4e2a995a91a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiArrayLayout>)))
  "Returns full string definition for message of type '<MultiArrayLayout>"
  (cl:format cl:nil "# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiArrayLayout)))
  "Returns full string definition for message of type 'MultiArrayLayout"
  (cl:format cl:nil "# The multiarray declares a generic multi-dimensional array of a~%# particular data type.  Dimensions are ordered from outer most~%# to inner most.~%~%MultiArrayDimension[] dim # Array of dimension properties~%uint32 data_offset        # padding elements at front of data~%~%# Accessors should ALWAYS be written in terms of dimension stride~%# and specified outer-most dimension first.~%# ~%# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]~%#~%# A standard, 3-channel 640x480 image with interleaved color channels~%# would be specified as:~%#~%# dim[0].label  = \"height\"~%# dim[0].size   = 480~%# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)~%# dim[1].label  = \"width\"~%# dim[1].size   = 640~%# dim[1].stride = 3*640 = 1920~%# dim[2].label  = \"channel\"~%# dim[2].size   = 3~%# dim[2].stride = 3~%#~%# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.~%~%================================================================================~%MSG: std_msgs/MultiArrayDimension~%string label   # label of given dimension~%uint32 size    # size of given dimension (in type units)~%uint32 stride  # stride of given dimension~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiArrayLayout>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dim) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiArrayLayout>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiArrayLayout
    (cl:cons ':dim (dim msg))
    (cl:cons ':data_offset (data_offset msg))
))
