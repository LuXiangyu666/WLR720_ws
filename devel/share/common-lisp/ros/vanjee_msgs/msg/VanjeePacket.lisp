; Auto-generated. Do not edit!


(cl:in-package vanjee_msgs-msg)


;//! \htmlinclude VanjeePacket.msg.html

(cl:defclass <VanjeePacket> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 1600 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass VanjeePacket (<VanjeePacket>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VanjeePacket>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VanjeePacket)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vanjee_msgs-msg:<VanjeePacket> is deprecated: use vanjee_msgs-msg:VanjeePacket instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <VanjeePacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vanjee_msgs-msg:stamp-val is deprecated.  Use vanjee_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <VanjeePacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vanjee_msgs-msg:data-val is deprecated.  Use vanjee_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VanjeePacket>) ostream)
  "Serializes a message object of type '<VanjeePacket>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VanjeePacket>) istream)
  "Deserializes a message object of type '<VanjeePacket>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 1600))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 1600)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VanjeePacket>)))
  "Returns string type for a message object of type '<VanjeePacket>"
  "vanjee_msgs/VanjeePacket")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VanjeePacket)))
  "Returns string type for a message object of type 'VanjeePacket"
  "vanjee_msgs/VanjeePacket")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VanjeePacket>)))
  "Returns md5sum for a message object of type '<VanjeePacket>"
  "7bc56c25fd50cf560d1cac8668884c5d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VanjeePacket)))
  "Returns md5sum for a message object of type 'VanjeePacket"
  "7bc56c25fd50cf560d1cac8668884c5d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VanjeePacket>)))
  "Returns full string definition for message of type '<VanjeePacket>"
  (cl:format cl:nil "# Raw vanjee LIDAR packet.~%~%time stamp              # packet timestamp~%uint8[1600] data        # packet contents~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VanjeePacket)))
  "Returns full string definition for message of type 'VanjeePacket"
  (cl:format cl:nil "# Raw vanjee LIDAR packet.~%~%time stamp              # packet timestamp~%uint8[1600] data        # packet contents~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VanjeePacket>))
  (cl:+ 0
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VanjeePacket>))
  "Converts a ROS message object to a list"
  (cl:list 'VanjeePacket
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':data (data msg))
))
