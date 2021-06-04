;;; Windows specific settings

; set JAVA_HOME and set lsp-java-java-path
(setenv "JAVA_HOME"  "C:/Program Files/Java/jdk-16.0.1")
(setq lsp-java-java-path "C:/Program Files/Java/jdk-16.0.1/bin/java.exe")

; add powershell and git to exec-path
; powershell must be set in exec-path otherwise lsp-java can not
; install the lsp server
(add-to-list 'exec-path "C:/Windows/system32/WindowsPowerShell/v1.0")
(add-to-list 'exec-path "C:/Program Files/Git/bin")
(setenv "PATH" (mapconcat #'identity exec-path path-separator))
