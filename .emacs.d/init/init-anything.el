;; anything
(add-to-list 'load-path "~/.emacs.d/elisp/anything-config")
(add-to-list 'load-path "~/.emacs.d/elisp/anything-config/extensions")
(require 'anything-startup)

(global-set-key "\C-x\C-a\C-a" 'anything)

(define-key anything-map "\C-\M-n" 'anything-next-source)
(define-key anything-map "\C-\M-p" 'anything-previous-source)
