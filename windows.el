;;; Windows specific settings

; set JAVA_HOME and set lsp-java-java-path
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
  (interactive)
  (setq buffer-face-mode-face '(:family "Courier New" :height 170 :weight bold))
  (buffer-face-mode))

(defun my:buffer-face-mode-text()
  (interactive)
  (setq buffer-face-mode-face '(:family "Times New Roman" :height 170))
  (buffer-face-mode))

(defun my:buffer-face-mode-default()
  (interactive)
  (setq buffer-face-mode-face '(:family "DejaVu Sans Mono" :height 170))
  (buffer-face-mode))

(defun my:buffer-face-mode-stylish()
  (interactive)
  (setq buffer-face-mode-face '(:family "Tw Cen MT" :height 170))
  (set-face-attribute 'org-table nil :font "Courier New")
  (set-face-attribute 'org-link nil :font "Courier New")
  (set-face-attribute 'org-block nil :font "Courier New")
  (buffer-face-mode))

(add-hook 'eww-mode-hook 'my:buffer-face-mode-text)
(add-hook 'dired-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'Info-mode-hook 'my:buffer-face-mode-text)
(add-hook 'org-mode-hook 'my:buffer-face-mode-stylish)
(add-hook 'c++-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'java-mode-hook 'my:buffer-face-mode-mono)
