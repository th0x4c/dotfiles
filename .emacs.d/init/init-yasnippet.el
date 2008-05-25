;; yasnippet
(setq load-path (cons "~/.emacs.d/elisp/yasnippet-0.5.4" load-path))

(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/elisp/yasnippet-0.5.4/snippets/")
