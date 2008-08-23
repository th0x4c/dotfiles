;; anything
(require 'anything-config)

(global-set-key "\C-x\C-a" 'anything)

(define-key anything-map "\C-\M-n" 'anything-next-source)
(define-key anything-map "\C-\M-p" 'anything-previous-source)

(require 'bm)
(defvar anything-c-source-bm
  '((name . "Visible Bookmarks")
    (init . (lambda ()
              (let ((bookmarks (bm-lists)))
                (setq anything-bm-marks
                      (delq nil
                            (mapcar (lambda (bm)
                                      (let ((start (overlay-start bm))
                                            (end (overlay-end bm)))
                                        (if (< (- end start) 2)
                                            nil
                                          (format "%7d: %s"
                                                  (line-number-at-pos start)
                                                  (buffer-substring start (1- end))))))
                                    (append (car bookmarks) (cdr bookmarks))))))))
    (candidates . (lambda ()
                    anything-bm-marks))
    (action . (("Goto line" . (lambda (candidate)
                                (goto-line (string-to-number candidate))))))))

(defvar anything-c-ctags-modes
  '( c-mode c++-mode awk-mode csharp-mode java-mode javascript-mode lua-mode
            makefile-mode pascal-mode perl-mode cperl-mode php-mode python-mode
            scheme-mode sh-mode slang-mode sql-mode tcl-mode lisp-mode emacs-lisp-mode))
(defvar anything-c-source-ctags
  '((name . "ctags")
    (candidates
     . (lambda ()
         (with-current-buffer anything-current-buffer
           (when (and buffer-file-name (memq major-mode anything-c-ctags-modes))
             (delq nil
                   (mapcar (lambda (line)
                             (when (string-match "\\([^ ]+\\) +\\([0-9]+\\) +[^ ]+ +\\(.+\\)[({]*" line)
                               (format "%7s:%s" (match-string 2 line) (match-string 1 line))))
                           (split-string (shell-command-to-string
                                          (format "ctags -x %s "  buffer-file-name))
                                         "\n" t)))))))
    (invariant)
    (action
     ("Goto line" .
      (lambda (candidate)
        (and (string-match "^ *\\([0-9]+\\)" candidate)
             (goto-line (string-to-int (match-string 1 candidate)))))))
    (persistent-action
     . (lambda (candidate)
         (when (string-match "^ *\\([0-9]+\\)" candidate)
           (goto-line (string-to-int (match-string 1 candidate)))
           (set-window-start (get-buffer-window anything-current-buffer) (point)))))))

(defvar anything-c-source-occur
  '((name . "Occur")
    (init . (lambda ()
              (setq anything-occur-current-buffer
                    (current-buffer))))
    (candidates . (lambda ()
                    (let ((anything-occur-buffer (get-buffer-create "*Anything Occur*")))
                      (with-current-buffer anything-occur-buffer
                        (occur-mode)
                        (erase-buffer)
                        (let ((count (occur-engine anything-pattern
                                                   (list anything-occur-current-buffer) anything-occur-buffer
                                                   list-matching-lines-default-context-lines case-fold-search
                                                   list-matching-lines-buffer-name-face
                                                   nil list-matching-lines-face
                                                   (not (eq occur-excluded-properties t)))))
                          (when (> count 0)
                            (setq next-error-last-buffer anything-occur-buffer)
                            (cdr (split-string (buffer-string) "\n" t))))))))
    (action . (("Goto line" . (lambda (candidate)
                                (with-current-buffer "*Anything Occur*"
                                  (search-forward candidate))
                                (goto-line (string-to-number candidate) anything-occur-current-buffer)))))
    (requires-pattern . 3)
    (volatile)
    (delayed)))

(setq anything-sources
      (list anything-c-source-buffers
            anything-c-source-bm
            anything-c-source-bookmarks
            anything-c-source-ctags
            anything-c-source-occur
;            anything-c-source-files-in-current-dir
;            anything-c-source-file-name-history
;            anything-c-source-info-pages
;            anything-c-source-man-pages
;            anything-c-source-locate
;            anything-c-source-emacs-commands
      ))

