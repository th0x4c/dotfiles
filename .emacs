;; OS 毎の設定用変数. system-type から OS を判別
;;   `gnu/linux'   compiled for a GNU/Linux system. 
;;   `darwin'      compiled for Darwin (GNU-Darwin, Mac OS X, ...).
;;   `windows-nt'  compiled as a native W32 application.
;;   `cygwin'      compiled using the Cygwin library.
;; 使用例
;;   (when run-darwin (load "foo"))
(defvar run-linux (equal system-type 'gnu/linux))  ;GNU/Linux
(defvar run-darwin (equal system-type 'darwin))	   ;Mac OS X
(defvar run-windows-nt (equal system-type 'windows-nt)) ;Windows

;; 起動時にメッセージを表示しない
(setq inhibit-startup-message t)

;; ウィンドウを縦分割時に文字を右端で折り返す
(setq truncate-partial-width-windows nil)

;; 列番号を表示
(column-number-mode t)

;; convenient switching between buffers using substrings of their names
(iswitchb-mode t)

;; gdb
;; display output from the debugged program in a separate buffer.
(setq gdb-use-separate-io-buffer t)

(setq load-path (cons "~/.emacs.d/init" load-path))
(setq load-path (cons "~/.emacs.d/elisp" load-path))

;; OS 特有の Custom 設定
(when run-windows-nt
  (load "init-windows-nt"))

;; lisp 読み込み
(load "init-bm")
(load "init-cc-mode")
(load "init-color-moccur")
(load "init-htmlize")
(load "init-linum")
(load "init-muse")
(load "init-ruby")
(load "init-sh-script")
(load "init-whitespace")
(load "init-windows")
(load "init-xcscope")
(load "init-yasnippet")
(load "init-anything-c-yasnippet")
(load "init-anything")
