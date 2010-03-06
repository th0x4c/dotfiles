;; muse
(add-to-list 'load-path "~/.emacs.d/elisp/muse/lisp")

(require 'muse-mode)     ; load authoring mode

(require 'muse-html)     ; load publishing styles I use
(require 'muse-latex)
(require 'muse-texinfo)
(require 'muse-docbook)

(require 'muse-project)  ; publish files in projects

(require 'muse-wiki)

;; yasnippet のキーバインドで使用するため TAB を無効化
(define-key muse-mode-map (kbd "<tab>") nil)

;; 文字コード設定
(setq muse-html-encoding-default 'utf-8-unix)
(setq muse-html-charset-default "utf-8")

;; プロジェクト
(add-to-list 'muse-project-alist
      '("Test" 
        ("~/Documents/wiki/data/test" :default "index")
        (:base "html" :path "~/Documents/wiki/public_html/test")
        ;(:base "pdf" :path "~/Documents/wiki/public_html/test/pdf")
       ))

(add-to-list 'muse-project-alist
      '("Other" 
        ("~/Documents/wiki/data/other" :default "index")
        (:base "html" :path "~/Documents/wiki/public_html/other")))

;; style sheet
(setq muse-html-style-sheet
      (concat "<link rel=\"stylesheet\" type=\"text/css\""
              " charset=\"utf-8\" media=\"all\""
              " href=\"./style.css\" />"))
