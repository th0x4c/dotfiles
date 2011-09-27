;; rsense
(setq rsense-home (expand-file-name "~/.emacs.d/elisp/rsense"))
(add-to-list 'load-path (concat rsense-home "/etc"))
(require 'rsense)

;; C-c .で補完
(add-hook 'ruby-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c .") 'ac-complete-rsense)))

(add-hook 'ruby-mode-hook
          (lambda ()
            (add-to-list 'ac-sources 'ac-source-rsense-method)
            (add-to-list 'ac-sources 'ac-source-rsense-constant)))

(setq rsense-rurema-home "~/local/ruby-refm-1.9.2-dynamic-20110629")

