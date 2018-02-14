;;;; wsg-stumpwm.lisp

(in-package #:stumpwm)

(defvar *stumpwm-startup-hook* nil
  "Hook to be run on StumpWM startup")

(defun add-stumpwm-startup-hook (hook)
  (uiop:register-hook-function '*stumpwm-startup-hook* hook))

(defun run-stumpwm-startup-hook ()
  (uiop:call-functions *stumpwm-startup-hook*))

(in-package #:wsg-stumpwm)

;;; "wsg-stumpwm" goes here. Hacks and glory await!

