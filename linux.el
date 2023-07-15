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
  ("g" hydra-programs/body "Programs")
  ("q" nil "Quit" :color red))

(global-set-key (kbd "C-`") 'hydra-master/body)



(defhydra hydra-emacs (:hint nil :color red)

  "
Emacs

^Folders^        ^Files^             ^Update^             ^Themes^
^^^^^^^^-----------------------------------------------------------------------------
_a_: emacs       _d_: emacs.org      _h_: cp .emacs.d     _k_: reset    _1_: Eclipse
_s_: .emacs.d    _f_: chiaro...el    _j_: fullscreen      _l_: up       _2_: Yellow
^ ^              _g_: linux.el       ^ ^                  _;_: down     _3_: Neon
"

  ("a" (dired "~/source/emacs"))
  ("s" (dired "~/.emacs.d"))

  ("d" (find-file "~/source/emacs/emacs.org"))
  ("f" (find-file "~/source/emacs/chiaroscuro-theme.el"))
  ("g" (find-file "~/source/emacs/linux.el"))

  ("h" (lambda () (interactive)
         (progn
           (shell-command "cd ~/.emacs.d ; cp -r ~/source/emacs/* .")
           (my:open-and-eval-init-file)
           (toggle-frame-fullscreen))))
  ("j" (toggle-frame-fullscreen))

  ("k" (my:reset-themes-index))
  ("l" (my:theme-up))
  (";" (my:theme-down))

  ("1" (my:set-theme INDEX-ECLIPSE))
  ("2" (my:set-theme INDEX-YELLOW))
  ("3" (my:set-theme INDEX-NEON))

  ("q" nil "Quit" :color blue))

(defhydra hydra-code (:hint nil :color red)

  "
Code

^File^              ^Edit^       ^Git^            ^Search^              ^Project^      ^Diff
^^^^^^^^------------------------------------------------------------------------------------------------
_a_: line numbers   _h_ cua      _j_: status      _w_: dired project    _t_: root     _y_: buffers
_s_: whitespace     ^ ^          _k_: log         _e_: vc-git-grep      ^ ^           _u_: directories
_d_: imenu          ^ ^          _l_: log file    _r_: helm-git-grep    ^ ^           ^ ^
_f_: treemacs       ^ ^          _;_: blame       ^ ^                   ^ ^           ^ ^
_g_: focus          ^ ^          ^ ^              ^ ^                   ^ ^           ^ ^
"

  ("a" (my:toggle-line-numbers))
  ("s" (my:toggle-whitespace))
  ("d" (helm-imenu))
  ("f" (treemacs))
  ("g" (my:toggle-focus-mode))

  ("h" (my:toggle-cua-mode))

  ("j" (my:projectile-magit))
  ("k" (magit-log))
  ("l" (magit-log-buffer-file))
  (";" (magit-blame))

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
_1_: other windows   _3_: right      _5_: window         _7_: window         _9_: other window  _-_: toggle
_2_: window          _4_: below      _6_: horizontally   _8_: horizontally   _0_: ace
"
  ("1" delete-other-windows)
  ("2" delete-window)

  ("3" split-window-right)
  ("4" split-window-below)

  ("5" enlarge-window)
  ("6" enlarge-window-horizontally)

  ("7" shrink-window)
  ("8" shrink-window-horizontally)

  ("9" other-window)
  ("0" ace-window)

  ("-" (my:toggle-golden-ratio-mode))

  ("q" nil "Quit" :color blue))


(defhydra hydra-project (:hint nil :color red)

  "
Project

^Files^         ^Build^
^^^^^^^^-----------------------------
_a_: root       _s_: compile
"
  ("a" project-dired)

  ("s" compile)

  ("q" nil "Quit" :color blue))

(defhydra hydra-programs (:hint nil :color red)

  "
Programs

^Web Surfing^    ^Reading^
^^^^^^^^-----------------------------
_a_: eww         _d_: elfeed
_s_: luwak       _f_: gnus
"
  ("a" eww)
  ("s" luwak-search)

  ("d" elfeed)
  ("f" gnus)

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

(defun my:toggle-cua-mode ()
  "Toggle 'cua-mode'."
  (if cua-mode
      (progn
        (cua-mode -1))
    (progn
      (cua-mode t))))

(defun greet (name)
  "Greet the specified NAME."
  (message "Hello, %s!" name))

(greet "Alice")

(defun my:enable-mode (mode-name)
  "Enable the major mode specified by the MODE-NAME string for the current buffer."
  (let ((mode-symbol (intern mode-name)))
    (if (fboundp mode-symbol)
        (funcall mode-symbol t)
      (message "Mode not found: %s" mode-name))))

(defun my:disable-mode (mode-name)
  "Enable the major mode specified by the MODE-NAME string for the current buffer."
  (let ((mode-symbol (intern mode-name)))
    (message "Mode value: %s" mode-symbol)
    (if (fboundp mode-symbol)
        (funcall mode-symbol -1)
      (message "Mode not found: %s" mode-name))))

(defun my:new-toggle-mode (mode-name)
  "Toggle mode by MODE-NAME."
  (let ((mode-symbol (intern mode-name)))
    (if (fboundp mode-symbol)
        (let ((mode-function (symbol-function mode-symbol)))
          (if (commandp mode-function)
              (if (derived-mode-p mode-symbol)
                  (funcall mode-function -1)
                (funcall mode-function t))
            (message "Mode function not found: %s" mode-name)))
      (message "Mode not found: %s" mode-name))))

;;; linux.el ends here
