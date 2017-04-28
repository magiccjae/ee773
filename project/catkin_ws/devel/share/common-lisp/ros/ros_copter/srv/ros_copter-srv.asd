
(cl:in-package :asdf)

(defsystem "ros_copter-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AddWaypoint" :depends-on ("_package_AddWaypoint"))
    (:file "_package_AddWaypoint" :depends-on ("_package"))
    (:file "RemoveWaypoint" :depends-on ("_package_RemoveWaypoint"))
    (:file "_package_RemoveWaypoint" :depends-on ("_package"))
    (:file "SetWaypointsFromFile" :depends-on ("_package_SetWaypointsFromFile"))
    (:file "_package_SetWaypointsFromFile" :depends-on ("_package"))
  ))