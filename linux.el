;;; linux.el --- linux init file
;;; Commentary:
;;; linux.el sets linux specific settings

;;; Code:

;;; Linux specific settings

(defvar lsp-java-java-path)
(defvar buffer-face-mode-face)

;(setenv "JAVA_HOME" "/usr/lib/jvm/java-14-openjdk-amd64")
;(setenv "JAVA_HOME" "/usr/lib/jvm/java-11-openjdk-armhf")
;(setenv "JAVA_HOME" "/usr/lib/jvm/java-17-openjdk-amd64")
;(setenv "JAVA_HOME" "/usr/lib/jvm/java-11-openjdk-amd64")
(setenv "JAVA_HOME" "/usr/lib/jvm/java-18-openjdk-amd64")

;(setenv "JAVA_HOME" "/usr/lib/jvm/java-11-openjdk-armhf/bin/java")
;(setq lsp-java-java-path "/usr/lib/jvm/java-11-openjdk-armhf/bin/java")
;(setq lsp-java-java-path "/usr/lib/jvm/java-17-openjdk-amd64/bin/java")
;(setq lsp-java-java-path "/usr/lib/jvm/java-11-openjdk-amd64/bin/java")
(setq lsp-java-java-path "/usr/lib/jvm/java-18-openjdk-amd64/bin/java")

; set font of mode-line
;(set-face-attribute 'mode-line nil :font "Comfortaa-20")

(defun my:buffer-face-mode-mono()
  (interactive)
  (setq buffer-face-mode-face '(:family "FreeMono"))
  (buffer-face-mode))

(defun my:buffer-face-mode-text()
  (interactive)
  (setq buffer-face-mode-face '(:family "FreeSerif"))
  (buffer-face-mode))

(defun my:buffer-face-mode-default()
  (interactive)
  (setq buffer-face-mode-face '(:family "DejaVu Sans Mono"))
  (buffer-face-mode))

(defun my:buffer-face-mode-stylish()
  (interactive)
  (setq buffer-face-mode-face '(:family "Comfortaa"))
  (buffer-face-mode))

;(set-face-attribute 'org-table nil :font "FreeMono")
;(set-face-attribute 'org-link nil :font "FreeMono")
;(set-face-attribute 'org-block nil :font "FreeMono")

(add-hook 'eww-mode-hook 'my:buffer-face-mode-text)
(add-hook 'dired-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'Info-mode-hook 'my:buffer-face-mode-text)
(add-hook 'org-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'c++-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'java-mode-hook 'my:buffer-face-mode-mono)

(setq compile-command "mvn exec:java")

(defun my:run()
  (interactive)
  (insert "./run.sh"))

(defun my:robotloader()
  (interactive)
  (let ((default-directory "/home/computer/software/robotloader"))
    (eshell '(4)))
  (insert "sudo ./robotloader_linux_x64.sh"))

;;; linux.el ends here
