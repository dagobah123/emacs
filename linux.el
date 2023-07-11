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



(defhydra hydra-master (:color blue)
  ""
  ("a" hydra-emacs/body "Emacs")
  ("s" hydra-code/body "Code")
  ("d" hydra-window/body "Window")
  ("f" hydra-project/body "Project")
  ("q" nil "Quit" :color red))

(global-set-key (kbd "C-`") 'hydra-master/body)



(defhydra hydra-emacs (:hint nil :color red)

  "
Emacs

^Folders^        ^Files^             ^Update^             ^Themes^
^^^^^^^^-----------------------------------------------------------------------------
_a_: emacs       _d_: emacs.org      _g_: cp .emacs.d     _k_: reset    _w_: Eclipse
_s_: .emacs.d    _f_: chiaro...el    _h_: fullscreen      _l_: up       _e_: Yellow
^ ^              _t_: linux.el       ^ ^                  _r_: down
"

  ("a" (dired "~/source/emacs"))
  ("s" (dired "~/.emacs.d"))

  ("d" (find-file "~/source/emacs/emacs.org"))
  ("f" (find-file "~/source/emacs/chiaroscuro-theme.el"))
  ("t" (find-file "~/source/emacs/linux.el"))

  ("g" (lambda () (interactive)
         (progn
           (shell-command "cd ~/.emacs.d ; cp -r ~/source/emacs/* .")
           (my:open-and-eval-init-file)
           (toggle-frame-fullscreen))))
  ("h" (my:open-and-eval-init-file))
  ("j" (toggle-frame-fullscreen))

  ("k" (my:reset-themes-index))
  ("l" (my:theme-up))
  ("r" (my:theme-down))
  ("w" (dired "/home/w/"))
  ("e" (dired "/home/e/"))

  ("1" enlarge-window-horizontally)
  ("2" shrink-window-horizontally)
  ("3" enlarge-window)
  ("4" shrink-window)
  ("5" ace-window)
  ("6" my:increase-font-size)
  ("7" my:decrease-font-size)
  ("8" my:reset-font-size)

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
_o_: toggle focus    ^ ^              ^ ^                   ^ ^               ^ ^
"

  ("a" (my:toggle-line-numbers))
  ("s" (my:toggle-whitespace))
  ("d" (helm-imenu))
  ("f" (treemacs))
  ("i" (delete-other-windows))
  ("o" (my:toggle-focus-mode))

  ("g" (my:projectile-magit))
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

(defhydra hydra-window (:hint nil :color red)

  "
Window

^Delete^             ^Split^         ^Enlarge^           ^Shrink^             ^Jump^            ^Golden Ratio^
^^^^^^^^----------------------------------------------------------------------------------------------------------
_1_: other windows   _3_: below      _5_: window         _7_: window         _9_: ?            _-_: toggle
_2_: window          _4_: right      _6_: horizontally   _8_: horizontally   _0_: ace-window
"
  ("1" delete-other-windows)
  ("2" delete-window)

  ("3" split-window-below)
  ("4" split-window-right)

  ("5" enlarge-window)
  ("6" enlarge-window-horizontally)

  ("7" shrink-window)
  ("8" shrink-window-horizontally)

  ("9" ace-window)
  ("0" ace-window)

  ("-" (my:toggle-golden-ratio-mode))

  ("q" nil "Quit" :color blue))



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

(defun my:toggle-focus-mode ()
  "Toggle focus-mode."
  (if focus-mode
      (progn
        (focus-mode -1))
    (progn
      (focus-mode t))))

(defun my:toggle-golden-ratio-mode ()
  "Toggle focus-mode."
  (if golden-ratio-mode
      (progn
        (golden-ratio-mode -1))
    (progn
      (golden-ratio-mode t))))

;;; linux.el ends here
