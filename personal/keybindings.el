(global-set-key (kbd "M-/") 'xref-find-references)
(define-key lsp-ui-mode-map (kbd "M-/") 'lsp-ui-peek-find-references)
(define-key prelude-mode-map (kbd "M-o") 'ace-window)
(global-set-key (kbd "C-M-;") 'hippie-expand)

;; use symbol overlay for navigating to next symbol occurance with M-n/M-p
(prelude-require-package 'symbol-overlay)
(global-set-key (kbd "M-n") 'symbol-overlay-jump-next)
(global-set-key (kbd "M-p") 'symbol-overlay-jump-prev)
(setq symbol-overlay-idle-time 0.1)
(add-hook 'prog-mode-hook (lambda () (symbol-overlay-mode 1)))

;;switch to last buffer
(global-set-key (kbd "C-c c") 'crux-switch-to-previous-buffer)

(prelude-require-package 'multiple-cursors)
