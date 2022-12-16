(when (display-graphic-p)
  ;; No title. See init.el for initial value.
  (setq-default frame-title-format nil))

(setq lsp-ui-peek-always-show nil)
(set-scroll-bar-mode nil)
(setq help-window-select t)
(global-set-key "\C-x2" (lambda () (interactive)(split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive)(split-window-horizontally) (other-window 1)))
