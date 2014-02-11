;;
;; ace jump mode major function
;; 
; (add-to-list 'load-path "/full/path/where/ace-jump-mode.el/in/")
; (autoload
;   'ace-jump-mode
;   "ace-jump-mode"
;   "Emacs quick move minor mode"
;   t)
;; you can select the key you prefer to
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
