;;; Linux specific settings

; (setenv "JAVA_HOME" "/usr/lib/jvm/java-14-openjdk-amd64")

; set font of mode-line
(set-face-attribute 'mode-line nil :font "Comfortaa-20")

(defun my:buffer-face-mode-mono()
  (interactive)
  (setq buffer-face-mode-face '(:family "FreeMono" :height 220 :weight bold))
  (buffer-face-mode))

(defun my:buffer-face-mode-text()
  (interactive)
  (setq buffer-face-mode-face '(:family "FreeSerif" :height 220))
  (buffer-face-mode))

(defun my:buffer-face-mode-default()
  (interactive)
  (setq buffer-face-mode-face '(:family "DejaVu Sans Mono" :height 220))
  (buffer-face-mode))

(defun my:buffer-face-mode-stylish()
  (interactive)
  (setq buffer-face-mode-face '(:family "Comfortaa" :height 220))
  (buffer-face-mode))

(add-hook 'eww-mode-hook 'my:buffer-face-mode-text)
(add-hook 'dired-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'Info-mode-hook 'my:buffer-face-mode-text)
(add-hook 'org-mode-hook 'my:buffer-face-mode-stylish)
(add-hook 'c++-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'java-mode-hook 'my:buffer-face-mode-mono)

(setq compile-command "mvn exec:java")
