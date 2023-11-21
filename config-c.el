;;; config-c.el -*- lexical-binding: t; -*-

(add-hook! (c-mode c++-mode)
  (setq c-default-style "gnu")
  (setq c-basic-offset 2))

(provide 'config-c)
