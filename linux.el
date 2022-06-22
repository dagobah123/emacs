;;; linux.el --- linux init file
;;; Commentary:
;;; linux.el sets linux specific settings

;;; Code:

;;; Linux specific settings

(defvar lsp-java-java-path)
(defvar buffer-face-mode-face)

(setenv "JAVA_HOME" "/usr/lib/jvm/java-18-openjdk-amd64")
(setq lsp-java-java-path "/usr/lib/jvm/java-18-openjdk-amd64/bin/java")

(defun my:buffer-face-mode-mono()
  "Set font to mono."
  (interactive)
  (setq buffer-face-mode-face '(:family "FreeMono"))
  (buffer-face-mode))

(defun my:buffer-face-mode-text()
  "Set font to serif."
  (interactive)
  (setq buffer-face-mode-face '(:family "FreeSerif"))
  (buffer-face-mode))

(defun my:buffer-face-mode-default()
  "Set default font."
  (interactive)
  (setq buffer-face-mode-face '(:family "DejaVu Sans Mono"))
  (buffer-face-mode))

(add-hook 'eww-mode-hook 'my:buffer-face-mode-text)
(add-hook 'Info-mode-hook 'my:buffer-face-mode-text)
(add-hook 'dired-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'java-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'c++-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'treemacs-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'org-mode-hook 'my:buffer-face-mode-mono)

;;; linux.el ends here
