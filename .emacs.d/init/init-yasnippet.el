;; yasnippet
(add-to-list 'load-path "~/.emacs.d/elisp/yasnippet")

(require 'yasnippet) ;; not yasnippet-bundle
(yas/initialize)
(yas/load-directory "~/.emacs.d/elisp/yasnippet/snippets/")
