;; windows
(require 'windows)
(win:startup-with-window)
(define-key ctl-x-map "C" 'see-you-again)

;; revive
(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe Emacs" t)
