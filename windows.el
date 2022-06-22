;;; windows.el --- windows init file
;;; Commentary:
;;; windows.el sets windows specific settings

;;; Code:

(defvar lsp-java-java-path)
(defvar buffer-face-mode-face)

(setenv "JAVA_HOME"  "C:/Program Files/Java/openjdk-16.0.2_windows-x64_bin/jdk-16.0.2/bin")
(setq lsp-java-java-path "C:/Program Files/Java/openjdk-16.0.2_windows-x64_bin/jdk-16.0.2/bin/java.exe")

; add powershell to exec-path
(add-to-list 'exec-path "c:/Windows/system32/WindowsPowerShell/v1.0")
(add-to-list 'exec-path "c:/Program Files/Git/bin")
(add-to-list 'exec-path "c:/cygwin64/bin")
(setenv "PATH" (mapconcat #'identity exec-path path-separator))

; set font of mode-line
(set-face-attribute 'mode-line nil :font "Tw Cen MT-20")

(defun my:buffer-face-mode-mono()
  "Set font to mono."
  (interactive)
  (setq buffer-face-mode-face '(:family "Courier New" :height 170))
  (buffer-face-mode))

(defun my:buffer-face-mode-text()
  "Set font to serif."
  (interactive)
  (setq buffer-face-mode-face '(:family "Times New Roman" :height 170))
  (buffer-face-mode))

(defun my:buffer-face-mode-default()
  "Set default font."
  (interactive)
  (setq buffer-face-mode-face '(:family "DejaVu Sans Mono" :height 170))
  (buffer-face-mode))

(defun my:buffer-face-mode-stylish()
  "Set font to stylish."
  (interactive)
  (setq buffer-face-mode-face '(:family "Tw Cen MT" :height 170))
  (set-face-attribute 'org-table nil :font "Courier New")
  (set-face-attribute 'org-link nil :font "Courier New")
  (set-face-attribute 'org-block nil :font "Courier New")
  (buffer-face-mode))

(add-hook 'eww-mode-hook 'my:buffer-face-mode-text)
(add-hook 'Info-mode-hook 'my:buffer-face-mode-text)
(add-hook 'org-mode-hook 'my:buffer-face-mode-stylish)
(add-hook 'java-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'c++-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'treemacs-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'dired-mode-hook 'my:buffer-face-mode-mono)

;;; windows.el ends here
