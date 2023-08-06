;;; config-python.el --- Python configuration file
;;;
;;; Commentary: Python configuration for my Emacs

;; Python Configuration
(require 'lsp-python-ms)
(setq lsp-python-ms-auto-install-server t)
(add-hook 'python-mode-hook #'lsp) ; or deferred-lsp

(provide 'config-python)
;;; config-python.el ends here
