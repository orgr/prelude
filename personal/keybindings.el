(global-set-key (kbd "M-/") 'xref-find-references)
(global-set-key (kbd "C-`") 'easy-mark)
(define-key prelude-mode-map (kbd "M-o") 'ace-window)

;; use symbol overlay for navigating to next symbol occurance with M-n/M-p
(prelude-require-package 'symbol-overlay)
(global-set-key (kbd "M-n") 'symbol-overlay-jump-next)
(global-set-key (kbd "M-p") 'symbol-overlay-jump-prev)
(setq symbol-overlay-idle-time 0.1)
(add-hook 'prog-mode-hook (lambda () (symbol-overlay-mode 1)))

;;switch to last buffer
(global-set-key (kbd "C-c b") 'crux-switch-to-previous-buffer)
