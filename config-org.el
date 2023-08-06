;;; config-org.el --- Org mode configuration
;;; Code:
(require 'org-superstar)

;;; Start org superstar mode
;(add-hook 'org-mode-hook (lambda () (org-superstar-mode 1)))

(setq org-directory "~/org/"
      org-log-done t
      org-hide-emphasis-markers t
      org-hide-leading-stars t
      org-tags-column 0
      org-auto-align-tags nil
      org-log-into-drawer t
      org-id-locations-file "~/org/.orgids"
      org-id-locations-file-relative nil
      org-superstar-headline-bullets-list '(?◉ ?○ #x25C8 #x25C7))

;; Org Agenda
(setq org-agenda-files (directory-files-recursively org-directory (rx ".org" eos)))
(setq org-todo-keywords
      '((sequence "TODO" "WORKING" "BLOCKED" "|" "DONE" "CANCELLED")
        (sequence "STRAT" "IDEA" "BLOCKED" "|" "DONE")
        (sequence "APPT" "MEETING" "|" "DONE" "CANCELLED")
        (sequence "[ ]" "[*]" "[-]" "[?]" "[X]")))

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


(provide 'config-org)
;;; config-org.el ends here
