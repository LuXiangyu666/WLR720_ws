
(cl:in-package :asdf)

(defsystem "vanjee_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "VanjeePacket" :depends-on ("_package_VanjeePacket"))
    (:file "_package_VanjeePacket" :depends-on ("_package"))
    (:file "VanjeeScan" :depends-on ("_package_VanjeeScan"))
    (:file "_package_VanjeeScan" :depends-on ("_package"))
  ))