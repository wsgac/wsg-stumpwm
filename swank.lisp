(in-package :stumpwm)

(defvar *swank-server-port* 12345
  "Local port on which to run Swank.")



#+nil
(defun start-swank-server (&key (port *swank-server-port*))
  (swank-loader:init)
  (swank:create-server :port port
                       :dont-close t))

#+nil
(defcommand start-swank ()
    (start-swank-server))

#+nil
(add-stumpwm-startup-hook 'start-swank-server)
