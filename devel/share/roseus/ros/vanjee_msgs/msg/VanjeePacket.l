;; Auto-generated. Do not edit!


(when (boundp 'vanjee_msgs::VanjeePacket)
  (if (not (find-package "VANJEE_MSGS"))
    (make-package "VANJEE_MSGS"))
  (shadow 'VanjeePacket (find-package "VANJEE_MSGS")))
(unless (find-package "VANJEE_MSGS::VANJEEPACKET")
  (make-package "VANJEE_MSGS::VANJEEPACKET"))

(in-package "ROS")
;;//! \htmlinclude VanjeePacket.msg.html


(defclass vanjee_msgs::VanjeePacket
  :super ros::object
  :slots (_stamp _data ))

(defmethod vanjee_msgs::VanjeePacket
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:data __data) (make-array 1600 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _data __data)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint8[1600] _data
    (* 1    1600)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint8[1600] _data
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8[1600] _data
   (setq _data (make-array 1600 :element-type :char))
   (replace _data buf :start2 ptr-) (incf ptr- 1600)
   ;;
   self)
  )

(setf (get vanjee_msgs::VanjeePacket :md5sum-) "7bc56c25fd50cf560d1cac8668884c5d")
(setf (get vanjee_msgs::VanjeePacket :datatype-) "vanjee_msgs/VanjeePacket")
(setf (get vanjee_msgs::VanjeePacket :definition-)
      "# Raw vanjee LIDAR packet.

time stamp              # packet timestamp
uint8[1600] data        # packet contents


")



(provide :vanjee_msgs/VanjeePacket "7bc56c25fd50cf560d1cac8668884c5d")


