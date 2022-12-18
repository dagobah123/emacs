;;; windows.el --- windows init file
;;; Commentary:
;;; windows.el sets windows specific settings

;;; Code:

(defvar lsp-java-java-path)
(defvar buffer-face-mode-face)

(setenv "JAVA_HOME" "C:/Program Files/Java/openjdk-16.0.2_windows-x64_bin/jdk-16.0.2")
(setq lsp-java-java-path "C:/Program Files/Java/openjdk-16.0.2_windows-x64_bin/jdk-16.0.2/bin/java.exe")

(when (string-equal system-type "windows-nt")
  (let ((xPaths
         '(
           "C:/Program Files/apache-maven-3.8.1/bin"
           "C:/Program Files/Git/bin"
           "C:/Program Files/Java/openjdk-16.0.2_windows-x64_bin/jdk-16.0.2/bin"
           "C:/Windows/system32/WindowsPowerShell/v1.0"
           "C:/cygwin64/bin"
           )))
    (setenv "PATH" (mapconcat 'identity xPaths ";"))
    (setq exec-path (append xPaths (list "." exec-directory)))))

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
(add-hook 'org-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'java-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'c++-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'treemacs-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'dired-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'lisp-mode-hook 'my:buffer-face-mode-mono)

;;; windows.el ends here
