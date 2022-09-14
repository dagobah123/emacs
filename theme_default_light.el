;;; theme_default_light --- common light theme
;;; Commentary:
;;; Code:

(defvar green-1)
(defvar green-2)
(defvar red-1)
(defvar red-2)
(defvar blue-1)
(defvar blue-2)
(defvar yellow-1)
(defvar yellow-2)
(defvar violet-1)
(defvar violet-2)
(defvar orange-1)
(defvar orange-2)
(defvar gray-1)
(defvar gray-2)
(defvar text-constant)
(defvar text-function)
(defvar text-keyword)
(defvar text-preprocessor)
(defvar text-type)
(defvar text-variable)
(defvar text-warning)
(defvar text-buffer-id)
(defvar text-ediff)
(defvar text-match)
(defvar background-match)
(defvar text-diff-added)
(defvar background-diff-added)
(defvar text-diff-removed)
(defvar background-diff-removed)
(defvar text-magit-branch-local)
(defvar background-magit-branch-local)
(defvar text-magit-branch-remote)
(defvar background-magit-branch-remote)
(defvar background-current-diff-A)
(defvar background-current-diff-B)
(defvar background-current-diff-C)
(defvar background-fine-diff-A)
(defvar background-fine-diff-B)
(defvar background-fine-diff-C)
(defvar background-ediff)
(defvar evil-emacs-1)
(defvar evil-emacs-2)
(defvar evil-normal-1)
(defvar evil-normal-2)
(defvar evil-insert-1)
(defvar evil-insert-2)
(defvar evil-replace-1)
(defvar evil-replace-2)
(defvar evil-replace-1)
(defvar evil-replace-2)
(defvar evil-visual-1)
(defvar evil-visual-2)
(defvar evil-motion-1)
(defvar evil-motion-2)
(defvar evil-operator-1)
(defvar evil-operator-2)
(defvar text-mode-line)
(defvar text-mode-line-border)
(defvar background-mode-line)
(defvar ivy-text)
(defvar ivy-background)
(defvar alert-1)
(defvar alert-2)
(defvar alert-3)
(defvar background-cursor)
(defvar text-error)

(setq green-1 "#113e00")
(setq green-2 "#d6ffc7")
(setq red-1 "#850b0b")
(setq red-2 "#ffc8c8")
(setq blue-1 "#1111ca")
(setq blue-2 "#bcdfff")
(setq yellow-1 "#645900")
(setq yellow-2 "#fff190")
(setq violet-1 "#611481")
(setq violet-2 "#f0cdff")
(setq orange-1 "#7b2d06")
(setq orange-2 "#ffce82")
(setq gray-1 "#333333")
(setq gray-2 "#dddddd")

(setq text-constant "#994410")
(setq text-function "#258800")
(setq text-keyword "#af06d0")
(setq text-preprocessor "#04bcc0")
(setq text-type "#bb0606")
(setq text-variable "#0e4ae5")
(setq text-warning "#ff0000")
 
;match
(setq text-match "#9b209b")
(setq background-match "#ffe2ff")
(setq ivy-text "#000000")
(setq ivy-background "#ffff00")

;magit
(setq text-diff-added "#113e00")
(setq background-diff-added "#d6ffc7")
(setq text-diff-removed "#850b0b")
(setq background-diff-removed "#ffc8c8")
 
(setq text-magit-branch-local "#000000")
(setq background-magit-branch-local "#00de00")
(setq text-magit-branch-remote "#000000")
(setq background-magit-branch-remote "#ff2f2f")
 
;ediff
(setq background-current-diff-A "#ffdddd")
(setq background-current-diff-B "#ddffdd")
(setq background-current-diff-C "#ffffaa")
(setq background-fine-diff-A "#ffbbbb")
(setq background-fine-diff-B "#aaffaa")
(setq background-fine-diff-C "#ffff55")
(setq background-ediff "#bbcaff")
(setq text-ediff "#000000")

(setq evil-emacs-1 "#611481") ;violet
(setq evil-emacs-2 "#f0cdff") ;violet
(setq evil-normal-1 "#113e00") ;green
(setq evil-normal-2 "#d6ffc7") ;green
(setq evil-insert-1 "#850b0b") ;red
(setq evil-insert-2 "#ffc8c8") ;red
(setq evil-replace-1 "#d6ffc7") ;red
(setq evil-replace-2 "#850b0b") ;red
(setq evil-replace-1 "#7b2d06") ;orange
(setq evil-replace-2 "#ffce82") ;orange
(setq evil-visual-1 "#645900") ;yellow
(setq evil-visual-2 "#fff190") ;yellow
(setq evil-motion-1 "#1111ca") ;blue
(setq evil-motion-2 "#bcdfff") ;blue
(setq evil-operator-1 "#1111ca") ;blue
(setq evil-operator-2 "#bcdfff") ;blue

(setq text-mode-line "#000000")
(setq text-mode-line-border "#000000")
(setq background-mode-line "#ffff00")

(setq alert-1 "#ff6600")
(setq alert-2 "#ee9966")
(setq alert-3 "#cccccc")

(setq background-cursor "#000000")

(setq text-error "#ff0000")

;;; theme_default_light.el ends here
