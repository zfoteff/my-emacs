;;; config-fzf.el -*- lexical-binding: t; -*-

;;; Code
(require 'fzf)

(use-package fzf
  :bind
  ;; Don't forget to set keybinds!
  (("C-c s" . 'fzf))
  :config
  (setq fzf/args "-x --color bw --preview='batcat -n {}' --print-query --margin=1,2 --no-hscroll"
        fzf/executable "fzf"
        fzf/git-grep-args "-i --line-number %s"
        ;; command used for `fzf-grep-*` functions
        ;; example usage for ripgrep:
        ;; fzf/grep-command "rg --no-heading -nH"
        fzf/grep-command "grep -nrH"
        ;; If nil, the fzf buffer will appear at the top of the window
        fzf/position-bottom t
        fzf/window-height 40))

(provide 'config-fzf)
;;; config-fzf.el ends here
