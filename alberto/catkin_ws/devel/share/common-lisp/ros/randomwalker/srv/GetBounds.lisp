; Auto-generated. Do not edit!


(cl:in-package randomwalker-srv)


;//! \htmlinclude GetBounds-request.msg.html

(cl:defclass <GetBounds-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetBounds-request (<GetBounds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBounds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBounds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name randomwalker-srv:<GetBounds-request> is deprecated: use randomwalker-srv:GetBounds-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBounds-request>) ostream)
  "Serializes a message object of type '<GetBounds-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBounds-request>) istream)
  "Deserializes a message object of type '<GetBounds-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBounds-request>)))
  "Returns string type for a service object of type '<GetBounds-request>"
  "randomwalker/GetBoundsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBounds-request)))
  "Returns string type for a service object of type 'GetBounds-request"
  "randomwalker/GetBoundsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBounds-request>)))
  "Returns md5sum for a message object of type '<GetBounds-request>"
  "b43c3f7151561a46ea4332c06c9db277")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBounds-request)))
  "Returns md5sum for a message object of type 'GetBounds-request"
  "b43c3f7151561a46ea4332c06c9db277")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBounds-request>)))
  "Returns full string definition for message of type '<GetBounds-request>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBounds-request)))
  "Returns full string definition for message of type 'GetBounds-request"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBounds-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBounds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBounds-request
))
;//! \htmlinclude GetBounds-response.msg.html

(cl:defclass <GetBounds-response> (roslisp-msg-protocol:ros-message)
  ((num_rows
    :reader num_rows
    :initarg :num_rows
    :type cl:integer
    :initform 0)
   (num_cols
    :reader num_cols
    :initarg :num_cols
    :type cl:integer
    :initform 0))
)

(cl:defclass GetBounds-response (<GetBounds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetBounds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetBounds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name randomwalker-srv:<GetBounds-response> is deprecated: use randomwalker-srv:GetBounds-response instead.")))

(cl:ensure-generic-function 'num_rows-val :lambda-list '(m))
(cl:defmethod num_rows-val ((m <GetBounds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader randomwalker-srv:num_rows-val is deprecated.  Use randomwalker-srv:num_rows instead.")
  (num_rows m))

(cl:ensure-generic-function 'num_cols-val :lambda-list '(m))
(cl:defmethod num_cols-val ((m <GetBounds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader randomwalker-srv:num_cols-val is deprecated.  Use randomwalker-srv:num_cols instead.")
  (num_cols m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetBounds-response>) ostream)
  "Serializes a message object of type '<GetBounds-response>"
  (cl:let* ((signed (cl:slot-value msg 'num_rows)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_cols)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetBounds-response>) istream)
  "Deserializes a message object of type '<GetBounds-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_rows) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_cols) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetBounds-response>)))
  "Returns string type for a service object of type '<GetBounds-response>"
  "randomwalker/GetBoundsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBounds-response)))
  "Returns string type for a service object of type 'GetBounds-response"
  "randomwalker/GetBoundsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetBounds-response>)))
  "Returns md5sum for a message object of type '<GetBounds-response>"
  "b43c3f7151561a46ea4332c06c9db277")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetBounds-response)))
  "Returns md5sum for a message object of type 'GetBounds-response"
  "b43c3f7151561a46ea4332c06c9db277")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetBounds-response>)))
  "Returns full string definition for message of type '<GetBounds-response>"
  (cl:format cl:nil "~%int32 num_rows~%int32 num_cols~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetBounds-response)))
  "Returns full string definition for message of type 'GetBounds-response"
  (cl:format cl:nil "~%int32 num_rows~%int32 num_cols~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetBounds-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetBounds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetBounds-response
    (cl:cons ':num_rows (num_rows msg))
    (cl:cons ':num_cols (num_cols msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetBounds)))
  'GetBounds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetBounds)))
  'GetBounds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetBounds)))
  "Returns string type for a service object of type '<GetBounds>"
  "randomwalker/GetBounds")