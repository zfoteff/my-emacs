
;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
(setq user-full-name "zfoteff"
      user-mail-address "zfoteff@protonmail.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-unicode-font' -- for unicode glyphs
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-tomorrow-night)

(setq doom-font (font-spec :family "Fira Code" :size 14 :weight 'medium))
;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
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
