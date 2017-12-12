;; Auto-generated. Do not edit!


(when (boundp 'randomwalker::GetBounds)
  (if (not (find-package "RANDOMWALKER"))
    (make-package "RANDOMWALKER"))
  (shadow 'GetBounds (find-package "RANDOMWALKER")))
(unless (find-package "RANDOMWALKER::GETBOUNDS")
  (make-package "RANDOMWALKER::GETBOUNDS"))
(unless (find-package "RANDOMWALKER::GETBOUNDSREQUEST")
  (make-package "RANDOMWALKER::GETBOUNDSREQUEST"))
(unless (find-package "RANDOMWALKER::GETBOUNDSRESPONSE")
  (make-package "RANDOMWALKER::GETBOUNDSRESPONSE"))

(in-package "ROS")





(defclass randomwalker::GetBoundsRequest
  :super ros::object
  :slots ())

(defmethod randomwalker::GetBoundsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass randomwalker::GetBoundsResponse
  :super ros::object
  :slots (_num_rows _num_cols ))

(defmethod randomwalker::GetBoundsResponse
  (:init
   (&key
    ((:num_rows __num_rows) 0)
    ((:num_cols __num_cols) 0)
    )
   (send-super :init)
   (setq _num_rows (round __num_rows))
   (setq _num_cols (round __num_cols))
   self)
  (:num_rows
   (&optional __num_rows)
   (if __num_rows (setq _num_rows __num_rows)) _num_rows)
  (:num_cols
   (&optional __num_cols)
   (if __num_cols (setq _num_cols __num_cols)) _num_cols)
  (:serialization-length
   ()
   (+
    ;; int32 _num_rows
    4
    ;; int32 _num_cols
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _num_rows
       (write-long _num_rows s)
     ;; int32 _num_cols
       (write-long _num_cols s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _num_rows
     (setq _num_rows (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_cols
     (setq _num_cols (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass randomwalker::GetBounds
  :super ros::object
  :slots ())

(setf (get randomwalker::GetBounds :md5sum-) "b43c3f7151561a46ea4332c06c9db277")
(setf (get randomwalker::GetBounds :datatype-) "randomwalker/GetBounds")
(setf (get randomwalker::GetBounds :request) randomwalker::GetBoundsRequest)
(setf (get randomwalker::GetBounds :response) randomwalker::GetBoundsResponse)

(defmethod randomwalker::GetBoundsRequest
  (:response () (instance randomwalker::GetBoundsResponse :init)))

(setf (get randomwalker::GetBoundsRequest :md5sum-) "b43c3f7151561a46ea4332c06c9db277")
(setf (get randomwalker::GetBoundsRequest :datatype-) "randomwalker/GetBoundsRequest")
(setf (get randomwalker::GetBoundsRequest :definition-)
      "
---

int32 num_rows
int32 num_cols

")

(setf (get randomwalker::GetBoundsResponse :md5sum-) "b43c3f7151561a46ea4332c06c9db277")
(setf (get randomwalker::GetBoundsResponse :datatype-) "randomwalker/GetBoundsResponse")
(setf (get randomwalker::GetBoundsResponse :definition-)
      "
---

int32 num_rows
int32 num_cols

")



(provide :randomwalker/GetBounds "b43c3f7151561a46ea4332c06c9db277")


