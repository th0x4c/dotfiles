;; clojure

;; clojure-mode
(add-to-list 'load-path "~/.emacs.d/elisp/clojure")
(autoload 'clojure-mode "clojure-mode" "A major mode for Clojure" t)
(add-to-list 'auto-mode-alist '("\\.clj$" . clojure-mode))

(setq inferior-lisp-program "lein repl")

;; require or autoload paredit-mode
(autoload 'enable-paredit-mode "paredit"
  "Turn on pseudo-structural editing of Lisp code."
  t)

(add-hook 'clojure-mode-hook 'enable-paredit-mode)
