;;; config-go.el --- Summary: Go config for my Emacs
;;; Commentary:

(require 'go-mode)
(require 'lsp-mode)
(require 'lsp-ui)

;;; Code:
(defvar go--tools '("golang.org/x/tools/gopls"
                    "golang.org/x/tools/cmd/goimports"
                    "honnef.co/go/tools/cmd/staticcheck"
                    "github.com/go-delve/delve/cmd/dlv"
                    "github.com/zmb3/gogetdoc"
                    "github.com/josharian/impl"
                    "github.com/cweill/gotests/..."
                    "github.com/fatih/gomodifytags"
                    "github.com/davidrjenni/reftools/cmd/fillstruct"))

(defun go-update-tools ()
  (interactive)
  (unless (executable-find "go")
    (user-error "Unable to find `go' in `exec-path'!"))
  (message "Installing go tools")
  (dolist (pkg go--tools)
    (set-process-sentinel
     (start-process "go-tools" "*Go Tools*" "go" "install" "-v" "-x" (concat pkg "@latest"))
     (lambda (proc _)))))

(defun lsp-go-install-save-hooks ()
  (lsp-headerline-breadcrumb-mode t)
  (add-hook 'before-save-hook
        #'lsp-format-buffer t t
        #'lsp-organize-imports t t
        ))

(add-hook 'go-mode-hook #'lsp-go-install-save-hooks
          'go-mode-hook #'lsp-deferred)

(setq lsp-eldoc-render-all t
      lsp-gopls-complete-unimported t
      lsp-gopls-staticcheck t
      lsp-gopls-complete-unimported t)

(use-package! lsp-ui
  :ensure t
  :commands lsp-ui-mode)

(provide 'config-go)
;;; config-go.el ends here
