(in-package :stumpwm)

(gnewbg "www")
(gnewbg "media")
(gnewbg "hack")
(gnewbg-float "float")

(define-key *top-map* (kbd "s-1") "gselect 1")
(define-key *top-map* (kbd "s-2") "gselect 2")
(define-key *top-map* (kbd "s-3") "gselect 3")
(define-key *top-map* (kbd "s-4") "gselect 4")
(define-key *top-map* (kbd "s-5") "gselect 5")

(define-key *top-map* (kbd "s-l") "exec slock")

(setf *screen-mode-line-format*
      (list '(:eval (run-shell-command
                     "date '+%R %F %a [week %W]' | tr -d [:cntrl:]" t))
	    " | Bat: %B | Layout: %L"
            ))


;; (add-stumpwm-startup-hook 'mode-line)
