
(cl:in-package :asdf)

(defsystem "fcu_common-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Airspeed" :depends-on ("_package_Airspeed"))
    (:file "_package_Airspeed" :depends-on ("_package"))
    (:file "Attitude" :depends-on ("_package_Attitude"))
    (:file "_package_Attitude" :depends-on ("_package"))
    (:file "Barometer" :depends-on ("_package_Barometer"))
    (:file "_package_Barometer" :depends-on ("_package"))
    (:file "Command" :depends-on ("_package_Command"))
    (:file "_package_Command" :depends-on ("_package"))
    (:file "GPS" :depends-on ("_package_GPS"))
    (:file "_package_GPS" :depends-on ("_package"))
    (:file "OutputRaw" :depends-on ("_package_OutputRaw"))
    (:file "_package_OutputRaw" :depends-on ("_package"))
    (:file "RCRaw" :depends-on ("_package_RCRaw"))
    (:file "_package_RCRaw" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
  ))