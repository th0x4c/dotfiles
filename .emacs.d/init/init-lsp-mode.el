;; lsp-mode

;; if you want to change prefix for lsp-mode keybindings.
(setq lsp-keymap-prefix "C-c l")

(require 'lsp-mode)
(add-hook 'c-mode-hook #'lsp)
(add-hook 'ruby-mode-hook #'lsp)
(add-hook 'rust-mode-hook #'lsp)
