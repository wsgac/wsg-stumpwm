;;;; wsg-stumpwm.asd

#|
To activate, place the following in your .stumpwm file

(asdf:load-system "wsg-stumpwm")
(stumpwm:run-stumpwm-startup-hook)
|#

(asdf:defsystem #:wsg-stumpwm
  :description "Describe wsg-stumpwm here"
  :author "Your Name <your.name@example.com>"
  :license "Specify license here"
  :serial t
  :depends-on (#:local-time #:battery-portable #:kbd-layouts)
  :components ((:file "package")
               (:file "wsg-stumpwm")
               (:file "mouse-keyboard")
               ;; (:file "swank")
	       ;; (:file "slynk")
               (:file "workspace")))

