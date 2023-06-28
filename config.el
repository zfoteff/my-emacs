;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq user-full-name "Zac Foteff"
      user-mail-address "zfoteff@protonmail.com")

(setq doom-theme 'doom-one)

(setq doom-font (font-spec :family "Fira Code" :size 14 :weight 'medium))
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'true)

;; Keybindings
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c i") #'org-roam-node-insert)

(require 'org-superstar)
(setq org-superstar-headline-bullets-list '(?◉ ?○ #x25C8 #x25C7))
(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

(setq org-directory "~/org/")
(setq org-roam-directory (file-truename "~/org/"))
(org-roam-db-autosync-mode)
(setq org-roam-mode-sections
      (list #'org-roam-backlinks-section
            #'org-roam-reflinks-section
            ))

(setq org-roam-capture-templates
      '(("d" "default" plain "%?"
         :target (file+head "%<%Y%m%d%H%M%S>-${slug}.org"
                            "${title}\n#+author:\tzfoteff\n#+date:\txx\n#+summary:\txx")
         :unnarrowed t)))

(use-package! websocket
    :after org-roam)

(use-package! org-roam-ui
    :after org
    :config
    (setq org-roam-ui-sync-theme t
          org-roam-ui-follow t
          org-roam-ui-update-on-save t))
(after! org
  (setq org-log-done t)
  (setq org-log-into-drawer t))

  ;; Org Agenda
  (setq org-agenda-files '(directory-files-recursively "~/org/" "\\.org$"))
  (setq org-todo-keywords
        '((sequence "TODO" "WORKING" "BLOCKED" "|" "DONE" "CANCELLED")
        (sequence "STRAT" "IDEA" "BLOCKED" "|" "DONE")
        (sequence "APPT" "MEETING" "|" "DONE" "CANCELLED")
        (sequence "[ ]" [*] "[-]" "[?]" "[X]")))

  (setq org-todo-keyword-faces
        '(("[ ]" . (:foreground "#8d968f" :weight bold))
        ("[-]" . (:foreground "#187ddb" :weight bold))
        ("[?]" . (:foreground "#a104c4" :weight bold))
        ("[X]" . (:foreground "#0cab21" :weight bold))
        ("TODO" . (:foreground "#8d968f" :weight bold))
        ("WORKING" . (:foreground "#187ddb" :weight bold))
        ("STRAT" . (:foreground "" :weight italic))
        ("IDEA" . (:foreground "white" :background "blue"))
        ("APPT" . (:foreground "#bfb556" :weight bold))
        ("MEETING" . (:foreground "#bfb556" :weight bold))
        ("BLOCKED" . (:foreground "#541114" :weight italic))
        ("DONE" . (:foreground "white" :background "#0cab21"))
        ("CANCELLED" . (:foreground "white" :background "red" :strike-through))))

;; Neotree Configuration
(after! neotree
  (advice-remove #'neo-util--set-window-width 'ignore))

;; Python Configuration
(setq +python-ipython-repl-args '("-i" "--simple-prompt"))
(setq +python-jupyter-repl-args '("--simple-prompt"))

(require 'lsp-python-ms)
(setq lsp-python-ms-auto-install-server t)
(add-hook 'python-mode-hook #'lsp) ; or lsp-deferred
