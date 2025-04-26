;; Eglot

(require 'eglot)
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'python-mode-hook 'eglot-ensure)
(add-hook 'ruby-mode-hook 'eglot-ensure)
(add-hook 'rust-mode-hook 'eglot-ensure)
