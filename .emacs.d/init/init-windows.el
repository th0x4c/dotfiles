;; windows
(add-to-list 'load-path "~/.emacs.d/elisp/windows")

(setq win:quick-selection nil)  ;; Not assign `C-c LETTER'
(require 'windows)
(win:startup-with-window)
(define-key ctl-x-map "C" 'see-you-again)

;; revive
(autoload 'save-current-configuration "revive" "Save status" t)
(autoload 'resume "revive" "Resume Emacs" t)
(autoload 'wipe "revive" "Wipe Emacs" t)
