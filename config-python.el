;;; config-python.el --- Python configuration file
;;;
;;; Commentary: Python configuration for my Emacs

;; Python Configuration
(setq lsp-pylsp-plugins-flake8-max-line-length 88)
(add-hook 'python-mode-hook #'lsp) ; or deferred-lsp

(provide 'config-python)
;;; config-python.el ends here

(use-package! python-black
  :demand t
  :after python
  :config
  (add-hook! 'python-mode-hook #'python-black-on-save-mode))
