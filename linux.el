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

(defhydra hydra-zoom (global-map "<f2>")
  "zoom"
  ("g" text-scale-increase "in")
  ("l" text-scale-decrease "out"))

(defhydra hydra-buffer-menu (:color pink
                             :hint nil)
  "
^Mark^             ^Unmark^           ^Actions^          ^Search
^^^^^^^^-----------------------------------------------------------------                        (__)
_m_: mark          _u_: unmark        _x_: execute       _R_: re-isearch                         (oo)
_s_: save          _U_: unmark up     _b_: bury          _I_: isearch                      /------\\/
_d_: delete        ^ ^                _g_: refresh       _O_: multi-occur                 / |    ||
_D_: delete up     ^ ^                _T_: files only: % -28`Buffer-menu-files-only^^    *  /\\---/\\
_~_: modified      ^ ^                ^ ^                ^^                                 ~~   ~~
"
  ("m" Buffer-menu-mark)
  ("u" Buffer-menu-unmark)
  ("U" Buffer-menu-backup-unmark)
  ("d" Buffer-menu-delete)
  ("D" Buffer-menu-delete-backwards)
  ("s" Buffer-menu-save)
  ("~" Buffer-menu-not-modified)
  ("x" Buffer-menu-execute)
  ("b" Buffer-menu-bury)
  ("g" revert-buffer)
  ("T" Buffer-menu-toggle-files-only)
  ("O" Buffer-menu-multi-occur :color blue)
  ("I" Buffer-menu-isearch-buffers :color blue)
  ("R" Buffer-menu-isearch-buffers-regexp :color blue)
  ("c" nil "cancel")
  ("v" Buffer-menu-select "select" :color blue)
  ("o" Buffer-menu-other-window "other-window" :color blue)
  ("q" quit-window "quit" :color blue))

(global-set-key (kbd "C-]") 'hydra-buffer-menu/body)


(defhydra hydra-navigation (:hint nil)

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
         (shell-command "cd ~/.emacs.d ; cp -r /home/pi/source/emacs/* .")))
  ("h" (my:open-and-eval-init-file))
  ("j" (toggle-frame-fullscreen))

  ("k" (my:reset-themes-index))
  ("l" (my:theme-up))
  ("q" (dired "/home/q/"))
  ("w" (dired "/home/w/"))
  ("e" (dired "/home/e/")))

(global-set-key (kbd "C-;") 'hydra-navigation/body)

(defhydra hydra-master (:color blue)
  "Master Hydra"
  ("a" hydra-sub1/body "Sub-Hydra 1")
  ("b" hydra-sub2/body "Sub-Hydra 2")
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

(global-set-key (kbd "C-c m") 'hydra-master/body)


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
