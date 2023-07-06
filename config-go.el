;;; config-go.el -*- lexical-binding: t; -*-

(require 'go-mode)
(require 'lsp-mode)
(require 'lsp-ui)

;;; Code:
(add-hook 'go-mode-hook #'lsp-deferred)
;; Set up before-save hooks to format buffer and add/delete imports.
;; Make sure you don't have other gofmt/goimports hooks enabled.
(defun lsp-go-install-save-hooks ()
  (add-hook 'before-save-hook
        #'lsp-format-buffer t t
        #'lsp-organize-imports t t))

(add-hook 'go-mode-hook #'lsp-go-install-save-hooks)

(setq lsp-eldoc-render-all t)
(setq lsp-gopls-staticcheck t)
(setq lsp-gopls-complete-unimported t)
;; Optional - provides fancier overlays.
(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(provide 'config-go)
