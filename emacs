; -*- mode: Lisp; -*-

;  ______     __    __     ______     ______     ______
; /\  ___\   /\ "-./  \   /\  __ \   /\  ___\   /\  ___\
; \ \  __\   \ \ \-./\ \  \ \  __ \  \ \ \__/_  \ \___  \
;  \ \_____\  \ \_\ \ \_\  \ \_\ \_\  \ \_____\  \/\_____\
;   \/_____/   \/_/  \/_/   \/_/\/_/   \/_____/   \/_____/

; org-capture
(setq org-directory "~/source/org-mode/")
(setq org-default-notes-file (concat org-directory "/org-capture.org"))
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c s") 'org-schedule)
(setq org-capture-templates
      '(
        ("t" "Tasks" entry (file+headline "~/source/org-mode/tasks.org" "Tasks")
         "* TODO %?\n")
        ("j" "Journal" entry (file+datetree "~/source/org-mode/journal.org")
         "* %?\nEntered on %U\n  %i\n  %a"))
      )

(setq org-agenda-files (list "~/source/org-mode/tasks.org"))

; dired move up folder with "b"
(add-hook 'dired-mode-hook
          (lambda ()
            (define-key dired-mode-map (kbd "b")
              (lambda () (interactive) (find-alternate-file ".."))
              )
            )
          )

(global-set-key (kbd "C-c f") 'find-name-dired)

; package archives
(require 'package)
(setq package-archives '(
                         ("melpa" . "https://melpa.org/packages/")))

; package list
(setq package-list '(
                     ag
                     auto-complete
                     auto-complete-c-headers
                     clang-format
                     company
                     counsel-jq
                     csharp-mode
                     dired-narrow
                     dired-rainbow
                     dired-subtree
                     dumb-jump
                     emms
                     engine-mode
                     expand-region
                     fountain-mode
                     ggtags
                     gnuplot
                     helm
                     helm-ag
                     helm-gtags
                     helm-swoop
                     imenu-list
                     java-imports
                     java-snippets
                     jtags
                     magit
                     magit-find-file
                     modern-cpp-font-lock
                     move-text
                     neotree
                     openwith
                     paredit
                     pdf-tools
                     powershell
                     projectile
                     projectile-codesearch
                     prolog
                     use-package
                     yasnippet
                     ))

; activate all packages
(package-initialize)

; install missing packages
(dolist (p package-list)
  (unless (package-installed-p p)
    (package-refresh-contents)
    (package-install p))
  (add-to-list 'package-selected-packages p))

; do not create backup files
(setq make-backup-files nil)

; scrolling up and down one line
(global-set-key (kbd "C-<down>") 'scroll-up-line)
(global-set-key (kbd "C-<up>") 'scroll-down-line)

; move text up/down
(global-set-key (kbd "M-<down>") 'move-text-down)
(global-set-key (kbd "M-<up>") 'move-text-up)

; change window size
(global-set-key (kbd "C-1") 'enlarge-window-horizontally)
(global-set-key (kbd "C-2") 'shrink-window-horizontally)
(global-set-key (kbd "C-3") 'enlarge-window)
(global-set-key (kbd "C-4") 'shrink-window)

(require 'modern-cpp-font-lock)
(modern-c++-font-lock-global-mode t)

(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(require 'yasnippet)
(yas-global-mode 1)

; 4 spaces indentation
(setq c-default-style "linux" c-basic-offset 4)

; disable tabs
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)

; disable menu bar
(menu-bar-mode -1)

(global-set-key (kbd "<f10>") 'tmm-menubar)

; disable scroll bars
(add-to-list 'default-frame-alist '(vertical-scroll-bars . nil))

; disable tool bar
(tool-bar-mode -1)

; cua-mode, use regular copy, cut, paste
(cua-mode t)

; do not truncate lines
(setq-default truncate-lines -1)

; theme
(load-theme 'wombat t)

; clock
(display-time)

; ask for y/n instead of yes/no
(fset 'yes-or-no-p 'y-or-n-p)

; confirm before closing emacs
(setq confirm-kill-emacs 'y-or-n-p)

; ido
(setq ido-enable-flex-matching t)
;(setq ido-everywhere t)
(ido-mode 1)

; projectile
(global-set-key (kbd "C-x p") 'projectile-switch-project)
(global-set-key (kbd "C-x o") 'projectile-find-file)

; switch split buffers
(global-set-key (kbd "M-o") 'other-window)
(windmove-default-keybindings)

; org-mode use shift arrows to change buffer
(add-hook 'org-shiftup-final-hook 'windmove-up)
(add-hook 'org-shiftleft-final-hook 'windmove-left)
(add-hook 'org-shiftdown-final-hook 'windmove-down)
(add-hook 'org-shiftright-final-hook 'windmove-right)
(setq org-support-shift-select 'always)
(setq org-todo-keywords
    '((sequence "TODO" "IN-PROGRESS" "WAITING" "DONE")))

; magit, git status
(global-set-key (kbd "C-x g") 'magit-status)

; company
(add-hook 'after-init-hook 'global-company-mode)

; gnus
(setq gnus-select-method '(nnnil))
(setq gnus-secondary-select-methods '((nntp "news.gwene.org")))

; bookmark-bmenu-list
(global-set-key (kbd "C-x l") 'bookmark-bmenu-list)

; engine-mode
(require 'engine-mode)
(engine-mode t)

(defengine duckduckgo
  "https://duckduckgo.com/?q=%s"
  :keybinding "d")

(defengine google
  "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s"
  :keybinding "g")

(defengine google-images
  "http://www.google.com/images?hl=en&source=hp&biw=1440&bih=795&gbv=2&aq=f&aqi=&aql=&oq=&q=%s"
  :keybinding "i")

(defengine google-maps
  "http://maps.google.com/maps?q=%s"
  :keybinding "m")

(defengine stack-overflow
  "https://stackoverflow.com/search?q=%s"
  :keybinding "o")

(defengine wikipedia
  "http://www.wikipedia.org/search-redirect.php?language=en&go=Go&search=%s"
  :keybinding "w")

(defengine youtube
  "http://www.youtube.com/results?aq=f&oq=&search_query=%s"
  :keybinding "y")

(require 'openwith)
(openwith-mode t)
(setq openwith-associations
      (list (list (openwith-make-extension-regexp '("pdf"))
                  "evince" '(file))
            (list (openwith-make-extension-regexp '("bmp" "jpeg" "jpg" "png"))
                  "gimp" '(file))
            (list (openwith-make-extension-regexp '("avi" "mp3" "mp4" "wav"))
                  "vlc" '(file))
            )
      )

; set ant to default compile
(setq compile-command "ant -emacs")

; neotree
(require 'neotree)
(global-set-key [f9] 'neotree-toggle)
(global-set-key (kbd "C-<f9>") 'neotree-find)
(setq neo-window-fixed-size nil)

; dumb-jump
(global-set-key (kbd "C-.") 'dumb-jump-go)
(global-set-key (kbd "C-,") 'dumb-jump-back)

(require 'ggtags)
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
              (ggtags-mode 1))))

(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

(define-key ggtags-mode-map (kbd "M-.") 'xref-find-definitions)
(define-key ggtags-mode-map (kbd "M-,") 'xref-pop-marker-stack)

; font size
(cond
 ((string-equal system-type "windows-nt")
  (progn
    (set-face-attribute 'default nil :height 150)
    )
  )
 ((string-equal system-type "gnu/linux")
  (progn
    (set-face-attribute 'default nil :font "DejaVu Sans Mono-16")
    )
  )
 )

(setenv "SHELL" "/bin/bash")
(setq explicit-shell-file-name "/bin/bash")

(defun my:duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(global-set-key (kbd "C-c d") 'my:duplicate-line)

(setq debug-on-error nil)

(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-c k r") 'helm-show-kill-ring)
(global-set-key (kbd "C-c h") 'helm-grep-do-git-grep)
(global-set-key (kbd "C-s") 'helm-swoop)
(global-set-key (kbd "C-c b") 'helm-buffers-list)
(global-set-key (kbd "C-c l") 'helm-bookmarks)
(global-set-key (kbd "C-c i") 'helm-mini)
(global-set-key (kbd "C-c q") 'helm-info)
; (global-set-key (kbd "C-c f") 'helm-find-files)

(when (fboundp 'winner-mode)
  (winner-mode 1))

(require 'projectile)
(setq projectile-indexing-method 'alien)
(add-to-list 'load-path "~/.emacs.d/elpa/projectile-20190626.1315/")
(projectile-global-mode)
(projectile-mode +1)

(use-package dired-narrow
  :ensure t
  :config
  (bind-key "C-f" #'dired-narrow)
  ;(bind-key "C-f" #'dired-narrow-fuzzy)
)

(use-package dired-subtree
  :ensure t
  :after dired
  :config
  (bind-key "C-1" #'dired-subtree-toggle)
)

; emms
(use-package emms
  :ensure t
  :config
    (require 'emms-setup)
    (require 'emms-player-mpd)
    (emms-all)
    (setq emms-seek-seconds 5)
    (setq emms-player-list '(emms-player-mpd))
    (setq emms-info-functions '(emms-info-mpd))
    (setq emms-player-mpd-server-name "localhost")
    (setq emms-player-mpd-server-port "6602")
)

(global-set-key (kbd "C-5") 'mpd/start-music-daemon)
(global-set-key (kbd "C-6") 'mpc)
(global-set-key (kbd "C-7") 'mpd/kill-music-daemon)

; Setting the default port
(setq mpc-host "localhost:6602")

; Starting the daemon from within emacs
(defun mpd/start-music-daemon ()
  "Start MPD, connects to it and syncs the metadata cache."
  (interactive)
  (shell-command "mpd")
  (mpd/update-database)
  (emms-player-mpd-connect)
  (emms-cache-set-from-mpd-all)
  (message "MPD Started!"))

; Killing the daemon from within emacs
(defun mpd/kill-music-daemon ()
  "Stops playback and kill the music daemon."
  (interactive)
  (emms-stop)
  (call-process "killall" nil nil nil "mpd")
  (message "MPD Killed!"))
(global-set-key (kbd "C-9") 'mpd/kill-music-daemon)

; Updating the database
(defun mpd/update-database ()
  "Updates the MPD database synchronously."
  (interactive)
  (call-process "mpc" nil nil nil "update")
  (message "MPD Database Updated!"))
(global-set-key (kbd "C-0") 'mpd/update-database)


(defvar java-function-regexp
  (concat
   "^[ \t]*"                                   ; leading white space
   "\\(public\\|private\\|protected\\|"        ; some of these 8 keywords
   "abstract\\|final\\|static\\|"
   "synchronized\\|native"
   "\\|override"                               ; C# support
   "\\|[ \t\n\r]\\)*"                          ; or whitespace
   "[a-zA-Z0-9_$]+"                            ; return type
   "[ \t\n\r]*[[]?[]]?"                        ; (could be array)
   "[ \t\n\r]+"                                ; whitespace
   "\\([a-zA-Z0-9_$]+\\)"                      ; the name we want!
   "[ \t\n\r]*"                                ; optional whitespace
   "("                                         ; open the param list
   "\\([ \t\n\r]*"                             ; optional whitespace
   "\\<[a-zA-Z0-9_$]+\\>"                      ; typename
   "[ \t\n\r]*[[]?[]]?"                        ; (could be array)
   "[ \t\n\r]+"                                ; whitespace
   "\\<[a-zA-Z0-9_$]+\\>"                      ; variable name
   "[ \t\n\r]*[[]?[]]?"                        ; (could be array)
   "[ \t\n\r]*,?\\)*"                          ; opt whitespace and comma
   "[ \t\n\r]*"                                ; optional whitespace
   ")"                                         ; end the param list
))
(defun my:next-java-method()
  (interactive)
  (re-search-forward java-function-regexp nil t)
  (recenter)
)
(defun my:prev-java-method()
  (interactive)
  (re-search-backward java-function-regexp nil t)
  (recenter)
)
(global-set-key (kbd "C-S-<up>") 'my:prev-java-method)
(global-set-key (kbd "C-S-<down>") 'my:next-java-method)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(cua-mode t nil (cua-base))
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("26e7b5bb876948e89e95ed7b372a15bf2c0ddbadd4c750542290cba22f7da682" "0209b7bbfae424bbc1d4c644c67f288547fd4a727795deebf7d60e730bd08356" "a7aac758457970a66b645e6dea51be0fef73a33cc14e7bbb1c8d99ccf83dd005" "dbf0941d6409475082f1265a30ffb41ee4c9716d94431de79f33800af106f381" "98f4223e9248f6a6310612b9b9758a4ba3bda175461e2024deecc602587cbc76" "005a69c06c6c4db2ae818bf8e9ea1839b185fd0831e2f76b4e581be41db0fb72" "c493b26e78a314f7512e8456027234c3e8a5af55faff91edd5f9823b2300456b" "9cc4c91821b9d63ca0076d3bac25123000e829e997c4bb40fc49b925f8ac2dd1" "a790730a42d04c8d624aacc870a1c8cf047ec88cd9e576412d148adee2fe5468" "d492f6229f3ee0c393daaf4a58d96763ef7dcae04bbb35ac29bf71d28f836663" "e21ca41b179573a4c804bccbe7932c7953b99e61b6ab59d5e847a09316973e6e" "59c192f0d645d67f92de7d5d19019962a8bc7d58cd4085e2018aad53a63d9f73" "08329abeab2963fb806c98abca3814020637fb072e53d21ffb0bcb4b6815e797" "fb25f8c8a8016295e5d1f895b6880cb4d2009cf4b25ded9b0a49616e315dd885" "ae223734896efa666dc6d7ed46a941e9d94d419e1a1aeea93e2173142d45730a" "05cd217e406a2e4912dd42218b2133a71b0125fed21ebeda7f3ac36b1fcb1e2a" default)))
 '(display-time-mode t)
 '(menu-bar-mode nil)
 '(package-selected-packages
   (quote
    (dired-narrow dired-subtree counsel-jq paredit expand-region powershell helm-swoop imenu-list move-text dumb-jump helm-ag engine-mode gnuplot pdf-tools emms dired-rainbow helm ggtags helm-gtags jtags chess java-snippets java-imports yasnippet prolog projectile-codesearch neotree modern-cpp-font-lock magit-find-file fountain-mode csharp-mode company clang-format auto-complete-c-headers ag)))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'dired-find-alternate-file 'disabled nil)

; set cursor color for multiple frames
(add-to-list 'default-frame-alist '(cursor-color . "#00ff00"))

(put 'erase-buffer 'disabled nil)

(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(global-hl-line-mode)
(set-face-background 'highlight "#007700")
(set-face-attribute hl-line-face nil :underline nil)
(set-face-foreground 'highlight nil)
(set-face-underline-p 'highlight t)

(defun my:copy-line()
  (interactive)
  (kill-whole-line)
  (yank)
  (newline)
  (yank)
)
(global-set-key (kbd "C-c w") 'my:copy-line)

; paredit
;(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
;(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
;(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
;(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
;(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
;(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
;(add-hook 'scheme-mode-hook           #'enable-paredit-mode)

(load "~/source/custom_el/custom_projects.el")
