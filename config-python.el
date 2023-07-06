;;; config-python.el -*- lexical-binding: t; -*-

;; Python Configuration
(setq +python-ipython-repl-args '("-i" "--simple-prompt"))
(setq +python-jupyter-repl-args '("--simple-prompt"))

(require 'lsp-python-ms)
(setq lsp-python-ms-auto-install-server t)
(add-hook 'python-mode-hook #'lsp) ; or deferred-lsp

(provide 'config-python)
