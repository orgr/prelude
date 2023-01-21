(require 'prelude-lsp)

(add-hook 'python-mode-hook (lambda ()
                              (anaconda-mode -1)
                              (eldoc-mode nil -1)))
(add-hook 'python-mode-hook #'lsp-deferred)
