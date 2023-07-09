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
_d_: emacs.org      _j_: fullscreen        _r_: Down TODO     ^ ^
_f_: chiaro...el    ^ ^                    _w_: Eclipse TODO  ^ ^
_t_: linux.el       ^ ^                    _e_: Yellow TODO   ^ ^
"

  ("a" (dired "~/source/emacs"))
  ("s" (dired "~/.emacs.d"))
  ("d" (find-file "~/source/emacs/emacs.org"))
  ("f" (find-file "~/source/emacs/chiaroscuro-theme.el"))
  ("t" (find-file "~/source/emacs/linux.el"))

  ("g" (lambda () (interactive)
         (shell-command "cd ~/.emacs.d ; cp -r ~/source/emacs/* .")))
  ("h" (my:open-and-eval-init-file))
  ("j" (toggle-frame-fullscreen))

  ("k" (my:reset-themes-index))
  ("l" (my:theme-up))
  ("r" (dired "/home/q/"))
  ("w" (dired "/home/w/"))
  ("e" (dired "/home/e/"))

  ("q" nil "Quit" :color blue))

(defhydra hydra-code (:hint nil :color red)

  "
Code

^File^               ^Git^            ^Search^              ^Project^          ^Diff
^^^^^^^^-----------------------------------------------------------------------------------------
_a_: line numbers    _g_: status      _w_: dired project    _t_: main folder  _y_: buffers
_s_: whitespace      _h_: log         _e_: vc-git-grep      ^ ^               _u_: directories
_d_: imenu           _j_: log file    _r_: helm-git-grep    ^ ^               ^ ^
_f_: treemacs        _k_: blame       ^ ^                   ^ ^               ^ ^
_i_: delete windows  ^ ^              ^ ^                   ^ ^               ^ ^
"

  ("a" (my:toggle-line-numbers))
  ("s" (my:toggle-whitespace))
  ("d" (helm-imenu))
  ("f" (treemacs))
  ("i" (delete-other-windows))

  ("g" (my:projectile-magit
))
  ("h" (magit-log))
  ("j" (magit-log-buffer-file))
  ("k" (magit-blame))

  ("w" my:dired-projectile-search)
  ("e" (my:vc-git-grep))
  ("r" helm-grep-do-git-grep)

  ("t" (project-dired))

  ("y" ediff-buffers)
  ("u" ediff-directories)

  ("q" nil "Quit" :color blue))

(defhydra hydra-master (:color blue)
  ""
  ("a" hydra-navigation/body "Emacs")
  ("s" hydra-code/body "Code")
  ("q" nil "Quit" :color red))

;(defhydra hydra-sub1 (:color red)
;  "Sub-Hydra 1"
;  ("x" command1 "Command 1")
;  ("y" command2 "Command 2")
;  ("q" nil "Quit" :color blue))
; 
;(defhydra hydra-sub2 (:color red)
;  "Sub-Hydra 2"
;  ("z" command3 "Command 3")
;  ("q" nil "Quit" :color blue))

(global-set-key (kbd "C-;") 'hydra-master/body)


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

(defun my:toggle-line-numbers ()
  "Toggle line numbers."
  (if global-display-line-numbers-mode
      (progn
        (global-display-line-numbers-mode -1))
    (progn
      (global-display-line-numbers-mode t))))

(defun my:toggle-whitespace ()
  "Toggle whitespace."
  (if whitespace-mode
      (progn
        (whitespace-mode -1))
    (progn
      (whitespace-mode t))))

;;; linux.el ends here
