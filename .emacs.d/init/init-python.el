;; Python

;; Ruff
(require 'ruff-format)
(add-hook 'python-mode-hook 'ruff-format-on-save-mode)
