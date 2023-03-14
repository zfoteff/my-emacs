;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(setq user-full-name "Zac Foteff"
      user-mail-address "zfoteff@protonmail.com")

(setq doom-theme 'doom-tomorrow-night)

(setq doom-font (font-spec :family "Fira Code" :size 14 :weight 'medium))
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

(setq org-directory "~/org/")
(after! org
  (setq org-log-done t)
  (setq org-log-into-drawer t))

;; Org Agenda
(setq org-agenda-files '(directory-files-recursively "~/org/" "\\.org$"))
(setq org-todo-keywords
      '((sequence "TODO" "WORKING" "BLOCKED" "|" "DONE" "CANCELLED")
        (sequence "STRAT" "IDEA" "BLOCKED" "|" "DONE")
        (sequence "APPT" "MEETING" "|" "DONE" "CANCELLED")
        (sequence "[ ]" "[-]" "[?]" "[X]")))

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

;; Python Configuration
(setq +python-ipython-repl-args '("-i" "--simple-prompt" "--no-color-info"))
(setq +python-jupyter-repl-args '("--simple-prompt"))
