;; CUA mode
(cua-mode t)
(setq cua-enable-cua-keys nil)

(global-set-key (kbd "M-RET") 'cua-set-rectangle-mark)
