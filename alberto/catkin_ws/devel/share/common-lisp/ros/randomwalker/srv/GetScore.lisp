; Auto-generated. Do not edit!


(cl:in-package randomwalker-srv)


;//! \htmlinclude GetScore-request.msg.html

(cl:defclass <GetScore-request> (roslisp-msg-protocol:ros-message)
  ((row
    :reader row
    :initarg :row
    :type cl:integer
    :initform 0)
   (col
    :reader col
    :initarg :col
    :type cl:integer
    :initform 0))
)

(cl:defclass GetScore-request (<GetScore-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetScore-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetScore-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name randomwalker-srv:<GetScore-request> is deprecated: use randomwalker-srv:GetScore-request instead.")))

(cl:ensure-generic-function 'row-val :lambda-list '(m))
(cl:defmethod row-val ((m <GetScore-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader randomwalker-srv:row-val is deprecated.  Use randomwalker-srv:row instead.")
  (row m))

(cl:ensure-generic-function 'col-val :lambda-list '(m))
(cl:defmethod col-val ((m <GetScore-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader randomwalker-srv:col-val is deprecated.  Use randomwalker-srv:col instead.")
  (col m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetScore-request>) ostream)
  "Serializes a message object of type '<GetScore-request>"
  (cl:let* ((signed (cl:slot-value msg 'row)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'col)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetScore-request>) istream)
  "Deserializes a message object of type '<GetScore-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'row) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'col) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetScore-request>)))
  "Returns string type for a service object of type '<GetScore-request>"
  "randomwalker/GetScoreRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetScore-request)))
  "Returns string type for a service object of type 'GetScore-request"
  "randomwalker/GetScoreRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetScore-request>)))
  "Returns md5sum for a message object of type '<GetScore-request>"
  "d4c39963a439a62ef1b91086c84fd1a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetScore-request)))
  "Returns md5sum for a message object of type 'GetScore-request"
  "d4c39963a439a62ef1b91086c84fd1a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetScore-request>)))
  "Returns full string definition for message of type '<GetScore-request>"
  (cl:format cl:nil "~%int32 row~%int32 col~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetScore-request)))
  "Returns full string definition for message of type 'GetScore-request"
  (cl:format cl:nil "~%int32 row~%int32 col~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetScore-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetScore-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetScore-request
    (cl:cons ':row (row msg))
    (cl:cons ':col (col msg))
))
;//! \htmlinclude GetScore-response.msg.html

(cl:defclass <GetScore-response> (roslisp-msg-protocol:ros-message)
  ((score
    :reader score
    :initarg :score
    :type cl:integer
    :initform 0))
)

(cl:defclass GetScore-response (<GetScore-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetScore-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetScore-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name randomwalker-srv:<GetScore-response> is deprecated: use randomwalker-srv:GetScore-response instead.")))

(cl:ensure-generic-function 'score-val :lambda-list '(m))
(cl:defmethod score-val ((m <GetScore-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader randomwalker-srv:score-val is deprecated.  Use randomwalker-srv:score instead.")
  (score m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetScore-response>) ostream)
  "Serializes a message object of type '<GetScore-response>"
  (cl:let* ((signed (cl:slot-value msg 'score)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetScore-response>) istream)
  "Deserializes a message object of type '<GetScore-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'score) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetScore-response>)))
  "Returns string type for a service object of type '<GetScore-response>"
  "randomwalker/GetScoreResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetScore-response)))
  "Returns string type for a service object of type 'GetScore-response"
  "randomwalker/GetScoreResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetScore-response>)))
  "Returns md5sum for a message object of type '<GetScore-response>"
  "d4c39963a439a62ef1b91086c84fd1a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetScore-response)))
  "Returns md5sum for a message object of type 'GetScore-response"
  "d4c39963a439a62ef1b91086c84fd1a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetScore-response>)))
  "Returns full string definition for message of type '<GetScore-response>"
  (cl:format cl:nil "~%int32 score~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetScore-response)))
  "Returns full string definition for message of type 'GetScore-response"
  (cl:format cl:nil "~%int32 score~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetScore-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetScore-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetScore-response
    (cl:cons ':score (score msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetScore)))
  'GetScore-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetScore)))
  'GetScore-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetScore)))
  "Returns string type for a service object of type '<GetScore>"
  "randomwalker/GetScore")