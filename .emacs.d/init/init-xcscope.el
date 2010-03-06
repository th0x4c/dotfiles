;; xcscope
(add-to-list 'load-path "~/.emacs.d/elisp/xcscope")
(require 'xcscope)
;; never check and/or update the cscope database when searching
(setq cscope-do-not-update-database t)

;; objc-mode で xcscope を起動
(add-hook 'objc-mode-hook (function cscope:hook))

;; 2. By default, colored faces are used to display results.  If you happen
;;    to use a black background, part of the results may be invisible
;;    (because the foreground color may be black, too).  There are at least
;;    two solutions for this:
;;
;;    2a. Turn off colored faces, by setting `cscope-use-face' to `nil',
;;        e.g.:
;;
;;            (setq cscope-use-face nil)
;;
;;    2b. Explicitly set colors for the faces used by cscope.  The faces
;;        are:
;;
;;            cscope-file-face
;;            cscope-function-face
;;            cscope-line-number-face
;;            cscope-line-face
;;            cscope-mouse-face
;;
;;        The face most likely to cause problems (e.g., black-on-black
;;        color) is `cscope-line-face'.
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cscope-line-face ((((class color) (background light)) (:foreground "white")))))

