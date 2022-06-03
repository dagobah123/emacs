;;; theme_default_dark --- common dark theme

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
(defvar text-error)
(defvar text-buffer-id)
(defvar background-buffer-id)
(defvar text-telephone-line-projectile)
(defvar background-telephone-line-projectile)
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

(setq green-1 "#1ad600")
(setq green-2 "#004400")
(setq red-1 "#cb4880")
(setq red-2 "#440000")
(setq blue-1 "#1e90ff")
(setq blue-2 "#222299")
(setq yellow-1 "#d6b400")
(setq yellow-2 "#625300")
(setq violet-1 "#f974f9")
(setq violet-2 "#43006d")
(setq orange-1 "#ff7f00")
(setq orange-2 "#cd6600")
(setq gray-1 "#999999")
(setq gray-2 "#666666")
(setq text-error "#5c6361")

;mode line
(setq text-buffer-id "#00bb00")
(setq background-buffer-id "#003300")
(setq text-telephone-line-projectile "#00bb00")
(setq background-telephone-line-projectile "#003300")

;match
(setq text-match "#f974f9")
(setq background-match "#43006d")

;magit
(setq text-diff-added "#51bc39")
(setq background-diff-added "#2b550c")
(setq text-diff-removed "#fc9c9c")
(setq background-diff-removed "#c02c2c")

(setq text-magit-branch-local "#00bb00")
(setq background-magit-branch-local "#003300")
(setq text-magit-branch-remote "#bb0000")
(setq background-magit-branch-remote "#330000")

;ediff
(setq background-current-diff-A "#a21c1c") ;red
(setq background-current-diff-B "#226622") ;green
(setq background-current-diff-C "#887400") ;yellow
(setq background-fine-diff-A "#7d2323") ;red
(setq background-fine-diff-B "#124d12") ;green
(setq background-fine-diff-C "#726000") ;yellow
(setq background-ediff "#172f7e")

;;; theme_default_dark.el ends here
