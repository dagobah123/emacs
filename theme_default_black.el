;;; theme_default_black --- common black theme
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
(defvar background-buffer-id-projectile)
(defvar ivy-text)
(defvar ivy-background)
(defvar alert-1)
(defvar alert-2)
(defvar alert-3)
(defvar background-cursor)
(defvar text-error)

(setq green-1 "#1ad600")
(setq green-2 "#004400")
(setq red-1 "#e52222")
(setq red-2 "#6b0a0a")
(setq blue-1 "#1e90ff")
(setq blue-2 "#202055")
(setq yellow-1 "#d6b400")
(setq yellow-2 "#554804")
(setq violet-1 "#f974f9")
(setq violet-2 "#43006d")
(setq orange-1 "#ff7f00")
(setq orange-2 "#4e2700")
(setq gray-1 "#999999")
(setq gray-2 "#444444")

(setq text-constant "#83441f")
(setq text-function "#084e00")
(setq text-keyword "#593e6d")
(setq text-preprocessor "#026a6c")
(setq text-type "#85385a")
(setq text-variable "#455887")
(setq text-warning "#770000")

;match
(setq text-match "#a84ea8")
(setq background-match "#43006d")
(setq ivy-text "#a6a600")
(setq ivy-background "#2a1f00")

;magit
(setq text-diff-added "#000000")
(setq background-diff-added "#386329")
(setq background-diff-added-highlight "#62ac48")
(setq text-diff-removed "#000000")
(setq background-diff-removed "#a32424")
(setq background-diff-removed-highlight "#e83434")

(setq text-magit-branch-local "#00bb00")
(setq background-magit-branch-local "#003300")
(setq text-magit-branch-remote "#bb0000")
(setq background-magit-branch-remote "#330000")

;ediff
(setq background-current-diff-A "#e83434")
(setq background-current-diff-B "#62ac48")
(setq background-current-diff-C "#bcaa31")
(setq background-fine-diff-A "#fc6c6c")
(setq background-fine-diff-B "#82c36b")
(setq background-fine-diff-C "#e0ca3b")
(setq background-ediff "#888888")
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

(setq text-mode-line "#a6a600")
(setq text-mode-line-border "#878700")
(setq background-buffer-id-projectile "#2a1f00")

(setq alert-1 "#ee6666")
(setq alert-2 "#aa6666")
(setq alert-3 "#555555")

(setq background-cursor "#009900")

(setq text-error "#ffff00")

;;; theme_default_black.el ends here
