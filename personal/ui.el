(when (display-graphic-p)
  ;; No title. See init.el for initial value.
  (setq-default frame-title-format nil))

(setq lsp-ui-peek-always-show nil)
(set-scroll-bar-mode nil)
(setq help-window-select t)
(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))

;; (set-face-attribute 'mode-line )
(prelude-require-package 'moody)
(prelude-require-package 'minions)

(prelude-require-package 'use-package)

(use-package moody
  :ensure t
  :config
  (setq x-underline-at-descent-line t)

  (setq-default mode-line-format
                '(" "
                  mode-line-front-space
                  mode-line-client
                  mode-line-frame-identification
                  mode-line-buffer-identification " " mode-line-position
                  (vc-mode vc-mode)
                  (multiple-cursors-mode mc/mode-line)
                  " " mode-line-modes
                  mode-line-end-spaces))

  (use-package minions
    :ensure t
    :config
    (minions-mode +1))

  (setq global-mode-string (remove 'display-time-string global-mode-string))
  (moody-replace-mode-line-buffer-identification)
  (moody-replace-vc-mode))
