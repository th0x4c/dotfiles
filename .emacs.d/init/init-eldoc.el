;; eldoc
(add-to-list 'load-path "~/.emacs.d/elisp/eldoc")
(require 'eldoc)
(require 'eldoc-extension)
(setq eldoc-idle-delay 0.05)
(setq eldoc-echo-area-use-multiline-p t)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-made-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)

;; c-eldoc
(when run-darwin (setq c-eldoc-cpp-command "/usr/bin/cpp"))
(load "c-eldoc")
(add-hook 'c-mode-hook
          (lambda ()
            (set (make-local-variable 'eldoc-idle-delay) 0.20)
            (c-turn-on-eldoc-mode)
            ))
