(in-package :stumpwm)

(defvar *slynk-server-port* 12345
  "Local port on which to run Slynk.")

(defvar *slynk-directory* #p"/home/wsg/hack/lisp/sly"
  "Sly directory")

(defun start-slynk-server (&key (port *slynk-server-port*))
  (ql:quickload :slynk)
  (slynk:create-server :port port :dont-close t))

(defcommand start-slynk ()
    (start-slynk-server))

(add-stumpwm-startup-hook 'start-slynk-server)
