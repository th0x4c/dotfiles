;; rust-mode
(require 'rust-mode)

;; Prevent extraneous tabs
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))

;; Format future rust buffers before saving using rustfmt.
(setq rust-format-on-save t)

;; The rust-run, rust-test, rust-compile and rust-check functions shell out to
;; Cargo to run, test, build and check your code. Under the hood, these use
;; the standard Emacs compile function.
(define-key rust-mode-map (kbd "C-c C-c C-r") 'rust-run)
(define-key rust-mode-map (kbd "C-c C-c C-t") 'rust-test)
(define-key rust-mode-map (kbd "C-c C-c C-b") 'rust-compile)
(define-key rust-mode-map (kbd "C-c C-c C-k") 'rust-check)

;; Run `cargo clippy'.
(define-key rust-mode-map (kbd "C-c C-c C-M-k") 'rust-run-clippy)
