
(cl:in-package :asdf)

(defsystem "diff_flat-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "y_traj" :depends-on ("_package_y_traj"))
    (:file "_package_y_traj" :depends-on ("_package"))
  ))