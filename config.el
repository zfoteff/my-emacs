;;; $DOOMDIR/config.el -*- lexical-binding: t; -*- Base Config Values
;;;
;;; Commentary: Base config for my emacs setup

;; Custom configuration settings path
(add-to-list 'load-path "~/.config/doom")

(require 'config-go)
(require 'config-python)
(require 'config-org)
(require 'config-org-roam)

(setq user-full-name "Zac Foteff"
      user-mail-address "zfoteff@protonmail.com")

;; Doom config
(setq doom-theme 'doom-tomorrow-night
      doom-font (font-spec :family "FiraCode" :size 15 :weight 'semibold)
      doom-variable-pitch-font (font-spec :family "FiraCode" :size 13))

;; General editor config
(display-time-mode 1)
(setq display-line-numbers-type 'true
      electric-pair-mode 'true)

;; Modeline configuration
(use-package doom-modeline
  :custom
  (doom-modeline-height 5)
  (doom-modeline-github nil)
  (doom-modeline-buffer-encoding nil)
  (custom-set-faces! '(doom-modeline-buffer-modified :foreground "yellow"))
  :config
  (display-time-mode 1)
  (setq display-time-default-load-average nil
        display-time-day-and-date t
        display-time-24hr-format t
        display-time-format "%y/%m/%d | %H:%M "))

;; Neotree Configuration
(after! neotree
  (advice-remove #'neo-util--set-window-width 'ignore))
;;; config.el ends here
