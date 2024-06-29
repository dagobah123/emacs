;;; custom.el --- custom init file
;;; Commentary:
;;; custom.el sets custom specific settings

;;; Code:

(defvar MAIL-NAME)
(setq MAIL-NAME "<first name> <last name>")

(defvar MAIL-MAIL)
(setq MAIL-MAIL "<mail address>")

(defhydra hydra-custom (:hint nil :color red)

  "
  Custom

  ^Reading^
  ^^^^^^^^--------------------------
  _a_: Practical Common Lisp
  _b_: The Common Lisp Cookbook
  "
  ("a" (eww "https://gigamonkeys.com/book/"))
  ("b" (eww "https://lispcookbook.github.io/cl-cookbook/"))

  ("q" nil "Quit" :color blue))

;;; custom.el ends here
