;; Auto-generated. Do not edit!


(when (boundp 'randomwalker::GetScore)
  (if (not (find-package "RANDOMWALKER"))
    (make-package "RANDOMWALKER"))
  (shadow 'GetScore (find-package "RANDOMWALKER")))
(unless (find-package "RANDOMWALKER::GETSCORE")
  (make-package "RANDOMWALKER::GETSCORE"))
(unless (find-package "RANDOMWALKER::GETSCOREREQUEST")
  (make-package "RANDOMWALKER::GETSCOREREQUEST"))
(unless (find-package "RANDOMWALKER::GETSCORERESPONSE")
  (make-package "RANDOMWALKER::GETSCORERESPONSE"))

(in-package "ROS")





(defclass randomwalker::GetScoreRequest
  :super ros::object
  :slots (_row _col ))

(defmethod randomwalker::GetScoreRequest
  (:init
   (&key
    ((:row __row) 0)
    ((:col __col) 0)
    )
   (send-super :init)
   (setq _row (round __row))
   (setq _col (round __col))
   self)
  (:row
   (&optional __row)
   (if __row (setq _row __row)) _row)
  (:col
   (&optional __col)
   (if __col (setq _col __col)) _col)
  (:serialization-length
   ()
   (+
    ;; int32 _row
    4
    ;; int32 _col
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _row
       (write-long _row s)
     ;; int32 _col
       (write-long _col s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _row
     (setq _row (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _col
     (setq _col (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass randomwalker::GetScoreResponse
  :super ros::object
  :slots (_score ))

(defmethod randomwalker::GetScoreResponse
  (:init
   (&key
    ((:score __score) 0)
    )
   (send-super :init)
   (setq _score (round __score))
   self)
  (:score
   (&optional __score)
   (if __score (setq _score __score)) _score)
  (:serialization-length
   ()
   (+
    ;; int32 _score
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _score
       (write-long _score s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _score
     (setq _score (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass randomwalker::GetScore
  :super ros::object
  :slots ())

(setf (get randomwalker::GetScore :md5sum-) "d4c39963a439a62ef1b91086c84fd1a8")
(setf (get randomwalker::GetScore :datatype-) "randomwalker/GetScore")
(setf (get randomwalker::GetScore :request) randomwalker::GetScoreRequest)
(setf (get randomwalker::GetScore :response) randomwalker::GetScoreResponse)

(defmethod randomwalker::GetScoreRequest
  (:response () (instance randomwalker::GetScoreResponse :init)))

(setf (get randomwalker::GetScoreRequest :md5sum-) "d4c39963a439a62ef1b91086c84fd1a8")
(setf (get randomwalker::GetScoreRequest :datatype-) "randomwalker/GetScoreRequest")
(setf (get randomwalker::GetScoreRequest :definition-)
      "
int32 row
int32 col
---

int32 score

")

(setf (get randomwalker::GetScoreResponse :md5sum-) "d4c39963a439a62ef1b91086c84fd1a8")
(setf (get randomwalker::GetScoreResponse :datatype-) "randomwalker/GetScoreResponse")
(setf (get randomwalker::GetScoreResponse :definition-)
      "
int32 row
int32 col
---

int32 score

")



(provide :randomwalker/GetScore "d4c39963a439a62ef1b91086c84fd1a8")


