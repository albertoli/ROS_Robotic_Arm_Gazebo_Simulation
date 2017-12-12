
(cl:in-package :asdf)

(defsystem "randomwalker-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "GetBounds" :depends-on ("_package_GetBounds"))
    (:file "_package_GetBounds" :depends-on ("_package"))
    (:file "GetScore" :depends-on ("_package_GetScore"))
    (:file "_package_GetScore" :depends-on ("_package"))
  ))