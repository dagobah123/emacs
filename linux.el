;;; Linux specific settings

;(setenv "JAVA_HOME" "/usr/lib/jvm/java-14-openjdk-amd64")
;(setenv "JAVA_HOME" "/usr/lib/jvm/java-11-openjdk-armhf/bin/java")

;(setenv "JAVA_HOME" "/usr/lib/jvm/java-11-openjdk-armhf/bin/java")
;(setq lsp-java-java-path "/usr/lib/jvm/java-11-openjdk-armhf/bin/java")

; set font of mode-line
;(set-face-attribute 'mode-line nil :font "Comfortaa-20")

(defun my:buffer-face-mode-mono()
  (interactive)
  (setq buffer-face-mode-face '(:family "FreeMono" :weight bold))
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
  (set-face-attribute 'org-table nil :font "FreeMono-25")
  (set-face-attribute 'org-link nil :font "FreeMono-25")
  (set-face-attribute 'org-block nil :font "FreeMono-25")
  (buffer-face-mode))

(add-hook 'eww-mode-hook 'my:buffer-face-mode-text)
(add-hook 'dired-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'Info-mode-hook 'my:buffer-face-mode-text)
(add-hook 'org-mode-hook 'my:buffer-face-mode-stylish)
(add-hook 'c++-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'java-mode-hook 'my:buffer-face-mode-mono)

(setq compile-command "mvn exec:java")

(defun my:run()
  (interactive)
  (insert "java -cp target/adapter-1.0-SNAPSHOT.jar org.designpatterns.adapter.Adapter org.designpatterns.adapter.Adapter"))

(defun my:robotloader()
  (interactive)
  (let ((default-directory "/home/computer/software/robotloader")) 
    (eshell '(4)))
  (insert "sudo ./robotloader_linux_x64.sh"))
