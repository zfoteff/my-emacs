;;; config-org-roam.el --- Org-Roam Configuration Values
;;;
;;; Commentary: Part of my emacs config

(require 'org-roam)

;;; Code:
;; org-roam
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (file-truename "~/org/"))
  (org-roam-capture-templates
      '(("d" "default" plain "%?"
         :target (file+head "${slug}.org"
                            "${title}\n#+author:\tzfoteff\n#+date:\txx\n#+summary:\txx")
         :unnarrowed t)))
  :config
  (setq org-roam-list-files-commands '(find fd fdfind rg))
  (org-roam-db-autosync-mode)
  :bind (("C-c n i" . org-roam-node-insert))
        (("C-c n f" . org-roam-node-find))
        (("C-c n t a" . org-roam-tag-add)))

;; org-roam-ui
(use-package! websocket
    :after org-roam)
(use-package! org-roam-ui
    :after org-roam
    :config (setq org-roam-ui-sync-theme t
                  org-roam-ui-follow t
                  org-roam-ui-update-on-save t))

(provide 'config-org-roam)
;;; config-org-roam.el ends here
