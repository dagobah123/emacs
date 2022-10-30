;;; theme_default_middle --- common light theme
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
(defvar background-diff-added-highlight)
(defvar text-diff-removed)
(defvar background-diff-removed)
(defvar background-diff-removed-highlight)
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
(setq green-2 "#72ad5d")
(setq red-1 "#850b0b")
(setq red-2 "#c16969")
(setq blue-1 "#1111ca")
(setq blue-2 "#4a7ba7")
(setq yellow-1 "#645900")
(setq yellow-2 "#bcaa31")
(setq violet-1 "#611481")
(setq violet-2 "#9d6cb2") ;f0cdff
(setq orange-1 "#7b2d06")
(setq orange-2 "#ad7e34")
(setq gray-1 "#333333")
(setq gray-2 "#bbbbbb")

(setq text-constant "#994410")
(setq text-function "#1d6a00")
(setq text-keyword "#7f3195")
(setq text-preprocessor "#04bcc0")
(setq text-type "#bb0606")
(setq text-variable "#0438bf")
(setq text-warning "#ff0000")
 
;match
(setq text-match "#4e084e")
(setq background-match "#ad73ad")
(setq ivy-text "#ffff00")
(setq ivy-background "#514628")

;magit
(setq text-diff-added "#113e00")
(setq background-diff-added "#79a06b")
(setq background-diff-added-highlight "#79a06b")
(setq text-diff-removed "#850b0b")
(setq background-diff-removed "#ca706e")
(setq background-diff-removed-highlight "#ca706e")

(setq text-magit-branch-local "#000000")
(setq background-magit-branch-local "#00de00")
(setq text-magit-branch-remote "#000000")
(setq background-magit-branch-remote "#ff2f2f")
 
;ediff
(setq background-current-diff-A "#c16969")
(setq background-current-diff-B "#72ad5d")
(setq background-current-diff-C "#bcaa31")
(setq background-fine-diff-A "#e87e7e")
(setq background-fine-diff-B "#87cc6e")
(setq background-fine-diff-C "#e0ca3b")
(setq background-ediff "#4a7ba7")
(setq text-ediff "#000000")

(setq evil-emacs-1 "#f974f9") ;violet
(setq evil-emacs-2 "#43006d") ;violet
(setq evil-normal-1 "#1ad600") ;green
(setq evil-normal-2 "#004400") ;green
(setq evil-insert-1 "#ffb9b9") ;red
(setq evil-insert-2 "#850d0d") ;red
(setq evil-replace-1 "#ffb9b9") ;red
(setq evil-replace-2 "#850d0d") ;red
(setq evil-replace-1 "#ff7f00") ;orange
(setq evil-replace-2 "#4e2700") ;orange
(setq evil-visual-1 "#d6b400") ;yellow
(setq evil-visual-2 "#554804") ;yellow
(setq evil-motion-1 "#1e90ff") ;blue
(setq evil-motion-2 "#202055") ;blue
(setq evil-operator-1 "#1e90ff") ;blue
(setq evil-operator-2 "#202055") ;blue

(setq text-mode-line "#ffff00")
(setq text-mode-line-border "#838300")
(setq background-mode-line "#514628")

(setq alert-1 "#cc3300")
(setq alert-2 "#aa6633")
(setq alert-3 "#777777")

(setq background-cursor "#00ff00")

(setq text-error "#ffff00")

;;; theme_default_middle.el ends here
