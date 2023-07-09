;;; linux.el --- linux init file
;;; Commentary:
;;; linux.el sets linux specific settings

;;; Code:

;;; Linux specific settings

(defvar lsp-java-java-path)
(defvar buffer-face-mode-face)

(cond
 ((string-equal LINUX-VERSION "ubuntu")
  (progn
    (setenv "JAVA_HOME" "/usr/lib/jvm/java-18-openjdk-amd64")
    (setq lsp-java-java-path "/usr/lib/jvm/java-18-openjdk-amd64/bin/java")))
 ((string-equal LINUX-VERSION "raspberrypi")
  (progn
    (setenv "JAVA_HOME" "/usr/lib/jvm/java-11-openjdk-armhf")
    (setq lsp-java-java-path "/usr/lib/jvm/java-11-openjdk-armhf/bin/java"))))

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
(add-hook 'dired-mode-hook 'my:buffer-face-mode-mono)
;(add-hook 'java-mode-hook 'my:buffer-face-mode-mono)
;(add-hook 'c++-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'treemacs-mode-hook 'my:buffer-face-mode-mono)
(add-hook 'org-mode-hook 'my:buffer-face-mode-mono)
;(add-hook 'lsp-mode-hook 'my:buffer-face-mode-mono)
;(add-hook 'lisp-mode-hook 'my:buffer-face-mode-mono)



(defhydra hydra-navigation (:hint nil :color red)

  "
Emacs

^Files^             ^Update^               ^Themes^           ^ ^
^^^^^^^^----------------------------------------------------------------------
_a_: emacs          _g_: cp .emacs.d       _k_: Reset         ^ ^
_s_: .emacs.d       _h_: eval init.el      _l_: Up            ^ ^
_d_: emacs.org      _j_: fullscreen        _q_: Down TODO     ^ ^
_f_: chiaro...el    ^ ^                    _w_: Eclipse TODO  ^ ^
^ ^                 ^ ^                    _e_: Yellow TODO   ^ ^
"

  ("a" (dired "~/source/emacs"))
  ("s" (dired "~/.emacs.d"))
  ("d" (find-file "~/source/emacs/emacs.org"))
  ("f" (find-file "~/source/emacs/chiaroscuro-theme.el"))

  ("g" (lambda () (interactive)
         (shell-command "cd ~/.emacs.d ; cp -r ~/source/emacs/* .")))
  ("h" (my:open-and-eval-init-file))
  ("j" (toggle-frame-fullscreen))

  ("k" (my:reset-themes-index))
  ("l" (my:theme-up))
  ("q" (dired "/home/q/"))
  ("w" (dired "/home/w/"))
  ("e" (dired "/home/e/"))

  ("r" nil "Quit" :color blue))

(global-set-key (kbd "C-;") 'hydra-navigation/body)

(defhydra hydra-master (:color blue)
  "Master Hydra"
  ("a" hydra-sub1/body "Sub-Hydra 1")
  ("b" hydra-sub2/body "Sub-Hydra 2")
  ("c" hydra-navigation/body "Emacs")
  ("q" nil "Quit" :color red))

(defhydra hydra-sub1 (:color red)
  "Sub-Hydra 1"
  ("x" command1 "Command 1")
  ("y" command2 "Command 2")
  ("q" nil "Quit" :color blue))

(defhydra hydra-sub2 (:color red)
  "Sub-Hydra 2"
  ("z" command3 "Command 3")
  ("q" nil "Quit" :color blue))

(global-set-key (kbd "C-,") 'hydra-master/body)


(defun my:open-and-eval-init-file ()
  "Open and eval init file."
  (interactive)
  (my:kill-init-buffer)
  (find-file "~/.emacs.d/init.el")
  (eval-buffer)
  (toggle-frame-fullscreen)
  (kill-buffer))

(defun my:kill-init-buffer ()
  "Kill init buffer."
  (interactive)
  (let ((buffer-name "init.el"))
    (when (get-buffer buffer-name)
      (kill-buffer buffer-name))))

;;; linux.el ends here
