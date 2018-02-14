(in-package :stumpwm)

(defvar *swank-server-port* 12345
  "Local port on which to run Swank.")

(defun start-swank-server (&key (port *swank-server-port*))
  (swank-loader:init)
  (swank:create-server :port port
                       ;; :style swank:*communication-style*
                       :dont-close t))

(defcommand start-swank ()
    (start-swank-server))

(add-stumpwm-startup-hook 'start-swank-server)
