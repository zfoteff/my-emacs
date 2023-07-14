;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-
(add-to-list 'load-path "~/.doom.d/")

(require 'config-go)
(require 'config-python)
(require 'config-org)

(setq user-full-name "Zac Foteff"
      user-mail-address "zfoteff@protonmail.com")

;; Doom config
(setq doom-theme 'doom-tomorrow-night)
(setq doom-modeline-height 35)
(setq doom-font (font-spec :family "FiraCode" :size 15 :weight 'semibold)
      doom-variable-pitch-font (font-spec :family "FiraCode" :size 13))

;; General editor config
(custom-set-faces!
  '(doom-modeline-buffer-modified :foreground "yellow"))
(setq display-line-numbers-type 'true)
(setq electric-pair-mode 'true)
(display-time-mode 1)

;; Neotree Configuration
(after! neotree
  (advice-remove #'neo-util--set-window-width 'ignore))

