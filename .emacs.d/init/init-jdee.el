;; JDEE 
(add-to-list 'load-path "~/.emacs.d/elisp/jdee/lisp")
(add-to-list 'load-path "~/.emacs.d/elisp/elib")

(require 'jde)

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(jde-debugger (quote ("JDEbug"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cscope-line-face ((((class color) (background light)) (:foreground "white")))))
