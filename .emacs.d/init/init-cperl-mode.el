;; cperl-mode

(defalias 'perl-mode 'cperl-mode)

(add-hook 'cperl-mode-hook
          (function (lambda ()
                      (set-face-background 'cperl-hash-face "black")
                      (set-face-background 'cperl-array-face "black")
                      )))

(setq cperl-indent-level 2)
(setq cperl-highlight-variables-indiscriminately t)
(setq cperl-extra-newline-before-brace t
      cperl-brace-offset              -2
      cperl-merge-trailing-else        nil)
