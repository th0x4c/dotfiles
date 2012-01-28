;; ELPA
;; package.el
(require 'package)

; For clojure-mode
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)
