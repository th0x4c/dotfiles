;; Clojure

;; Paredit
(require 'paredit)
(add-hook 'clojure-mode-hook #'paredit-mode)
(add-hook 'cider-repl-mode-hook #'paredit-mode)

;; CIDER
(add-hook 'cider-mode-hook #'eldoc-mode)
(setq cider-show-error-buffer nil)
