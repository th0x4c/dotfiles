;; Clojure

(setq inferior-lisp-program "lein repl")

;; require or autoload paredit-mode
(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code."
  t)

(add-hook 'clojure-mode-hook 'enable-paredit-mode)
