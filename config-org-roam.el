;;; config-org-roam.el --- Org-Roam Configuration Values
;;;
;;; Commentary: Part of my emacs config

;;; Code:
;; org-roam
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory (expand-file-name "~/org/"))
  (org-roam-capture-templates
      '(("d" "default" plain "%?"
         :target (file+head "${slug}.org"
                            "${title}\n#+author:\tzfoteff\n#+date:\txx\n#+summary:\txx")
         :unnarrowed t)))
  :config
  (org-roam-db-autosync-mode)
  (setq org-roam-list-files-commands '(find fd fdfind rg))
  :bind (("C-c n i" . org-roam-node-insert))
        (("C-c n f" . org-roam-node-find)))

;; org-roam-ui
(use-package websocket
    :after org-roam)
(use-package org-roam-ui
    :after org-roam
    :config (setq org-roam-ui-sync-theme t
                  org-roam-ui-follow t
                  org-roam-ui-update-on-save t))

;; Keybindings
;(global-set-key (kbd "C-c a") #'org-agenda)
;(global-set-key (kbd "C-c i") #'org-roam-node-insert)

(provide 'config-org-roam)
;;; config-org-roam.el ends here
