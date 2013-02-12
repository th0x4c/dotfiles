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

;; Initial message displayed in *scratch* buffer at startup.
(setq initial-scratch-message nil)

;; メニューバーを表示しない
(menu-bar-mode -1)

;; ツールバーを表示しない
(if window-system
  (tool-bar-mode -1))

;; ウィンドウを縦分割時に文字を右端で折り返す
(setq truncate-partial-width-windows nil)

;; 列番号を表示
(column-number-mode t)

;; バックアップファイルを作成しない
(setq make-backup-files nil)

;; 自動保存しない
(setq auto-save-default nil)

;; convenient switching between buffers using substrings of their names
; (iswitchb-mode t) ; anything.el とコンフリクトするのでコメントアウト

;; Show Paren mode.
;; When Show Paren mode is enabled, any matching parenthesis is highlighted
(show-paren-mode t)

;; gdb
;; display output from the debugged program in a separate buffer.
(setq gdb-use-separate-io-buffer t)

(add-to-list 'load-path "~/.emacs.d/init")
(add-to-list 'load-path "~/.emacs.d/elisp")

;; OS 特有の Custom 設定
(when run-windows-nt
  (load "init-windows-nt"))

;; lisp 読み込み
(load "init-elpa")
(load "init-bm")
(load "init-cc-mode")
;; (load "init-clojure")
(load "init-c-eldoc")
;; (load "init-ruby")
(load "init-sh-script")
(load "init-windows")
(load "init-xcscope")
(load "init-yasnippet")
(load "init-helm")
(load "init-auto-complete")
;; (load "init-rsense")

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-function-name-face ((t (:foreground "brightblue"))))
 '(minibuffer-prompt ((t (:foreground "cyan")))))