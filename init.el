;;; init.el --- emacs init file
;;; Commentary:
;;; init.el sets EMACS_HOME and loads emacs.org

;;; Code:
; set EMACS-HOME
(defvar EMACS-HOME)
(setq EMACS-HOME "~/.emacs.d/")

(defvar LINUX-VERSION)
(setq LINUX-VERSION "ubuntu")
;(setq LINUX-VERSION "raspberrypi")

; load emacs.org
(org-babel-load-file "~/.emacs.d/emacs.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(lsp-java helm-lsp lsp-ui dap-mode flycheck yasnippet-snippets company projectile use-package solarized-theme openwith magit-find-file helm-swoop exec-path-from-shell dired-quick-sort dired-narrow)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)

;;; init.el ends here
