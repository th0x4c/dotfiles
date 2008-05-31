;; xcscope
(require 'xcscope)
;; never check and/or update the cscope database when searching
(setq cscope-do-not-update-database t)

;; objc-mode で xcscope を起動
(add-hook 'objc-mode-hook (function cscope:hook))

