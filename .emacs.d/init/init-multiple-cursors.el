;; multiple-cursors
(require 'multiple-cursors)

(global-set-key (kbd "C-c C-c C-c") 'mc/edit-lines)

(global-set-key (kbd "C-c >") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c <") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-c <") 'mc/mark-all-like-this)
