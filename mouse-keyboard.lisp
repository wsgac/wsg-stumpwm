(in-package #:stumpwm)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mouse/touchpad settings ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun setup-mouse ()
  ;; Options: :ignore :sloppy :click
  (setf *mouse-focus-policy* :click)
  ;; Touchpad - OpenBSD
  #+openbsd
  (defcommand touchpad-turn-off () ()
    (let ((cmd "synclient TouchpadOff=1"))
      (run-shell-command cmd t)))
  #+openbsd
  (defcommand touchpad-turn-on () ()
    (let ((cmd "synclient TouchpadOff=0"))
      (run-shell-command cmd t)))
  #+(or openbsd)
  (touchpad-turn-off))

;;;;;;;;;;;;;;;;;;;;;
;; Keyboard layout ;;
;;;;;;;;;;;;;;;;;;;;;

(defun setup-keyboard ()
  (ql:quickload :kbd-layouts)
  (kbd-layouts::keyboard-layout-list "pl" "ru -variant phonetic")
  (setf kbd-layouts::*caps-lock-behavior* :ctrl))

;;;;;;;;;;;
;; Hooks ;;
;;;;;;;;;;;

(add-stumpwm-startup-hook 'setup-mouse)
(add-stumpwm-startup-hook 'setup-keyboard)
