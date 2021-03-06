; -*- mode: Lisp; -*-

;  ______     __    __     ______     ______     ______
; /\  ___\   /\ "-./  \   /\  __ \   /\  ___\   /\  ___\
; \ \  __\   \ \ \-./\ \  \ \  __ \  \ \ \__/_  \ \___  \
;  \ \_____\  \ \_\ \ \_\  \ \_\ \_\  \ \_____\  \/\_____\
;   \/_____/   \/_/  \/_/   \/_/\/_/   \/_____/   \/_____/

; ag
; ag -g . | ag 'foo'
; ag 'foo'

; org
(setq org-directory "~/source/org-mode/")
(setq org-default-notes-file (concat org-directory "/org-capture.org"))
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c s") 'org-schedule)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c b") 'org-switchb)
(setq org-capture-templates
      '(
        ("t" "Tasks" entry (file+headline "~/source/org-mode/tasks.org" "Tasks")
         "* TODO %?\n")
        ("j" "Journal" entry (file+headline "~/source/org-mode/journal.org" "Journal")
         "* %?\n")
        ("l" "Log" entry (file+datetree "~/source/org-mode/log.org")
         "* %?\nEntered on %U\n  %i\n  %a")
        )
      )

(setq org-agenda-files (list "~/source/org-mode/tasks.org"))

(global-set-key (kbd "C-x q") 'goto-last-change)
(global-set-key (kbd "C-x l") 'locate)

(global-set-key (kbd "C-x C-b") 'switch-to-buffer)
(global-set-key (kbd "C-<next>") 'next-buffer)
(global-set-key (kbd "C-<prior>") 'previous-buffer)

(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
(defun my-nov-font-setup ()
  (face-remap-add-relative 'variable-pitch :family "Liberation Serif"
                                           :height 1.0))
(add-hook 'nov-mode-hook 'my-nov-font-setup)

(defun eww-new ()
  (interactive)
  (let ((url (read-from-minibuffer "Enter URL or keywords: ")))
    (switch-to-buffer (generate-new-buffer "eww"))
    (eww-mode)
    (eww url)))


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
;; MELPA package repository
(add-to-list 'package-archives
             '("melpa-edge" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)


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
                     dired-quick-sort
                     dired-rainbow
                     dired-subtree
                     dumb-jump
                     emms
                     engine-mode
                     expand-region
                     fountain-mode
                     ggtags
                     gnuplot
                     goto-last-change
                     helm
                     helm-ag
                     helm-gtags
                     helm-projectile
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
                     nov
                     paredit
                     pdf-tools
                     popper
                     powershell
                     projectile
                     projectile-codesearch
                     prolog
                     solarized-theme
                     spray
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

(setq lsp-enable-links nil)

; prevent warning to show on windows machine
(cond
 ((string-equal system-type "windows-nt")
  (progn
    (setq ls-lisp-use-insert-directory-program t)
    )
  )
 )
(require 'dired-quick-sort)
(dired-quick-sort-setup)

; https://github.com/karthink/popper
(require 'popper)
(setq popper-reference-buffers
      '("\\*Messages\\*"
        "\\*scratch\\*"
        "Output\\*$"
        "magit:*"
        dired-mode
        help-mode
        "^Calc:"
        "\\*ielm\\*"
        "\\*IList\\*"
        "\\*eshell\\*"
        "\\*shell\\*"
        "\\*powershell\\*"
        compilation-mode))
;(setq popper-group-function #'popper-group-by-project)
;(defun popper-group-by-project()
;  ')
;(setq popper-mode-line nil)
(global-set-key (kbd "C-`") 'popper-toggle-latest)
(global-set-key (kbd "C-~") 'popper-cycle)
(global-set-key (kbd "C-M-`") 'popper-toggle-type)
(global-set-key (kbd "C-c k-p") 'kill-latest-popup)
(popper-mode +1)

(setq display-buffer-alist '(
                             ("\\*IList\\*"
                              (display-buffer-in-side-window)
                              (side . right)
                              (window-width . 50)
                             )
                             ("\\*Messages\\*"
                              (display-buffer-in-side-window)
                              (side . bottom)
                              (window-height . 100)
                              )
                             )
)

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
(load-theme 'solarized-dark-high-contrast t)

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
    '((sequence "TODO" "IN-PROGRESS" "WAITING" "|" "CANCELED" "DONE")))

(setq org-todo-keyword-faces
      '(
        ("TODO" . (:foreground "black" :background "red" :weight bold))
        ("IN-PROGRESS" . (:foreground "green" :background "black" :weight bold))
        ("WAITING" . (:foreground "orange" :background "black" :weight bold))
        ("CANCELED" . (:foreground "gray" :background "black" :weight bold))
        ("DONE" . (:foreground "gray" :background "black" :weight bold))
         ))

;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;'(org-level-1 ((t (:foreground "yellow" :weight bold))))
 ;'(org-level-2 ((t (:foreground "orange" :weight bold))))
 ;'(org-level-3 ((t (:foreground "chocolate" :weight bold))))
 ;'(org-level-4 ((t (:foreground "deep sky blue" :weight bold))))
 ;'(org-level-5 ((t (:foreground "violet" :weight bold))))
 ;'(org-level-6 ((t (:foreground "brown1" :weight bold))))
 ;'(org-level-7 ((t (:foreground "SeaGreen1" :weight bold))))
 ;'(org-level-8 ((t (:foreground "dark turquoise" :weight bold)))))

; magit, git status
(global-set-key (kbd "C-x g") 'magit-status)

; company
(add-hook 'after-init-hook 'global-company-mode)

; gnus
(setq gnus-select-method '(nnnil))
(setq gnus-secondary-select-methods '((nntp "news.gwene.org")))

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

;(require 'openwith)
;(openwith-mode t)
;(setq openwith-associations
;      (list (list (openwith-make-extension-regexp '("pdf"))
;                  "evince" '(file))
;            (list (openwith-make-extension-regexp '("bmp" "jpeg" "jpg" "png"))
;                  "gimp" '(file))
;            (list (openwith-make-extension-regexp '("avi" "mp3" "mp4" "wav"))
;                  "vlc" '(file))
;            (list (openwith-make-extension-regexp '("sln"))
;                  "C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Professional\\Common7\\IDE\\devenv.exe" '(file))
;            )
;      )

; open file in dired with eww, shortcut: e
; (define-key dired-mode-map "e" (lambda () (interactive) (eww-open-file (dired-get-file-for-visit))))

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
    (set-face-attribute 'default nil :font "DejaVu Sans Mono-20")
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

;(use-package dired-narrow
;  :ensure t
;  :config
;  (bind-key "C-f" #'dired-narrow)
;  ;(bind-key "C-f" #'dired-narrow-fuzzy)
;)

;(use-package dired-subtree
;  :ensure t
;  :after dired
;  :config
;  (bind-key "C-c 1" #'dired-subtree-toggle)
;)

; emms
;(use-package emms
;  :ensure t
;  :config
;    (require 'emms-setup)
;    (require 'emms-player-mpd)
;    (emms-all)
;    (setq emms-seek-seconds 5)
;    (setq emms-player-list '(emms-player-mpd))
;    (setq emms-info-functions '(emms-info-mpd))
;    (setq emms-player-mpd-server-name "localhost")
;    (setq emms-player-mpd-server-port "6602")
;)

;(global-set-key (kbd "C-5") 'mpd/start-music-daemon)
;(global-set-key (kbd "C-6") 'mpc)
;(global-set-key (kbd "C-7") 'mpd/kill-music-daemon)

; Setting the default port
;(setq mpc-host "localhost:6602")

; Starting the daemon from within emacs
;(defun mpd/start-music-daemon ()
;  "Start MPD, connects to it and syncs the metadata cache."
;  (interactive)
;  (shell-command "mpd")
;  (mpd/update-database)
;  (emms-player-mpd-connect)
;  (emms-cache-set-from-mpd-all)
;  (message "MPD Started!"))

; Killing the daemon from within emacs
;(defun mpd/kill-music-daemon ()
;  "Stops playback and kill the music daemon."
;  (interactive)
;  (emms-stop)
;  (call-process "killall" nil nil nil "mpd")
;  (message "MPD Killed!"))
;(global-set-key (kbd "C-9") 'mpd/kill-music-daemon)

; Updating the database
;(defun mpd/update-database ()
;  "Updates the MPD database synchronously."
;  (interactive)
;  (call-process "mpc" nil nil nil "update")
;  (message "MPD Database Updated!"))
;(global-set-key (kbd "C-0") 'mpd/update-database)


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
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#689d6a")
 '(cua-mode t nil (cua-base))
 '(cua-overwrite-cursor-color "#b57614")
 '(cua-read-only-cursor-color "#98971a")
 '(custom-enabled-themes (quote (solarized-dark-high-contrast)))
 '(custom-safe-themes
   (quote
    ("830877f4aab227556548dc0a28bf395d0abe0e3a0ab95455731c9ea5ab5fe4e1" "285d1bf306091644fb49993341e0ad8bafe57130d9981b680c1dbd974475c5c7" "00445e6f15d31e9afaa23ed0d765850e9cd5e929be5e8e63b114a3346236c44c" "c433c87bd4b64b8ba9890e8ed64597ea0f8eb0396f4c9a9e01bd20a04d15d358" "0fffa9669425ff140ff2ae8568c7719705ef33b7a927a0ba7c5e2ffcfac09b75" "51ec7bfa54adf5fff5d466248ea6431097f5a18224788d0bd7eb1257a4f7b773" "13a8eaddb003fd0d561096e11e1a91b029d3c9d64554f8e897b2513dbf14b277" "7f1d414afda803f3244c6fb4c2c64bea44dac040ed3731ec9d75275b9e831fe5" "2809bcb77ad21312897b541134981282dc455ccd7c14d74cc333b6e549b824f3" "26e7b5bb876948e89e95ed7b372a15bf2c0ddbadd4c750542290cba22f7da682" "0209b7bbfae424bbc1d4c644c67f288547fd4a727795deebf7d60e730bd08356" "a7aac758457970a66b645e6dea51be0fef73a33cc14e7bbb1c8d99ccf83dd005" "dbf0941d6409475082f1265a30ffb41ee4c9716d94431de79f33800af106f381" "98f4223e9248f6a6310612b9b9758a4ba3bda175461e2024deecc602587cbc76" "005a69c06c6c4db2ae818bf8e9ea1839b185fd0831e2f76b4e581be41db0fb72" "c493b26e78a314f7512e8456027234c3e8a5af55faff91edd5f9823b2300456b" "9cc4c91821b9d63ca0076d3bac25123000e829e997c4bb40fc49b925f8ac2dd1" "a790730a42d04c8d624aacc870a1c8cf047ec88cd9e576412d148adee2fe5468" "d492f6229f3ee0c393daaf4a58d96763ef7dcae04bbb35ac29bf71d28f836663" "e21ca41b179573a4c804bccbe7932c7953b99e61b6ab59d5e847a09316973e6e" "59c192f0d645d67f92de7d5d19019962a8bc7d58cd4085e2018aad53a63d9f73" "08329abeab2963fb806c98abca3814020637fb072e53d21ffb0bcb4b6815e797" "fb25f8c8a8016295e5d1f895b6880cb4d2009cf4b25ded9b0a49616e315dd885" "ae223734896efa666dc6d7ed46a941e9d94d419e1a1aeea93e2173142d45730a" "05cd217e406a2e4912dd42218b2133a71b0125fed21ebeda7f3ac36b1fcb1e2a" default)))
 '(display-time-mode t)
 '(fci-rule-color "#ebdbb2")
 '(highlight-changes-colors (quote ("#d3869b" "#8f3f71")))
 '(highlight-symbol-colors
   (quote
    ("#eca7d1039ac0" "#d5d0dbc8aed7" "#eaa6bb6892aa" "#e0ddc363b134" "#e32bd9af9d49" "#ee3bc34b94bf" "#c5a0cc76b307")))
 '(highlight-symbol-foreground-color "#665c54")
 '(highlight-tail-colors
   (quote
    (("#ebdbb2" . 0)
     ("#c6c148" . 20)
     ("#82cc73" . 30)
     ("#5b919b" . 50)
     ("#e29a3f" . 60)
     ("#df6835" . 70)
     ("#f598a7" . 85)
     ("#ebdbb2" . 100))))
 '(hl-bg-colors
   (quote
    ("#e29a3f" "#df6835" "#cf5130" "#f598a7" "#c2608f" "#5b919b" "#82cc73" "#c6c148")))
 '(hl-fg-colors
   (quote
    ("#fbf1c7" "#fbf1c7" "#fbf1c7" "#fbf1c7" "#fbf1c7" "#fbf1c7" "#fbf1c7" "#fbf1c7")))
 '(hl-paren-colors (quote ("#689d6a" "#b57614" "#076678" "#8f3f71" "#98971a")))
 '(lsp-ui-doc-border "#665c54")
 '(menu-bar-mode nil)
 '(nrepl-message-colors
   (quote
    ("#9d0006" "#af3a03" "#b57614" "#747400" "#c6c148" "#004858" "#689d6a" "#d3869b" "#8f3f71")))
 '(package-selected-packages
   (quote
    (lsp-ui lsp-java lsp-mode dired-quick-sort helm-projectile goto-last-change solarized-theme popper spray monkeytype nov dired-narrow dired-subtree counsel-jq paredit expand-region powershell helm-swoop imenu-list move-text dumb-jump helm-ag engine-mode gnuplot pdf-tools emms dired-rainbow helm ggtags helm-gtags jtags chess java-snippets java-imports yasnippet prolog projectile-codesearch neotree modern-cpp-font-lock magit-find-file fountain-mode csharp-mode company clang-format auto-complete-c-headers ag)))
 '(pos-tip-background-color "#ebdbb2")
 '(pos-tip-foreground-color "#665c54")
 '(smartrep-mode-line-active-bg (solarized-color-blend "#98971a" "#ebdbb2" 0.2))
 '(term-default-bg-color "#fbf1c7")
 '(term-default-fg-color "#7c6f64")
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#9d0006")
     (40 . "#aa884a070b5b")
     (60 . "#b02b60b10f68")
     (80 . "#b57614")
     (100 . "#ac5581ac15c2")
     (120 . "#a7ab873816bc")
     (140 . "#a2be8c9d17c5")
     (160 . "#9d8891de18dc")
     (180 . "#98971a")
     (200 . "#8b4b99083ab0")
     (220 . "#84019a084776")
     (240 . "#7be09b065366")
     (260 . "#72aa9c045ed9")
     (280 . "#689d6a")
     (300 . "#4da186537087")
     (320 . "#3e1b7b4e7349")
     (340 . "#2ac8708575c4")
     (360 . "#076678"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#fbf1c7" "#ebdbb2" "#750000" "#9d0006" "#747400" "#98971a" "#8a5100" "#b57614" "#004858" "#076678" "#9f4d64" "#d3869b" "#2e7d33" "#689d6a" "#7c6f64" "#3c3836")))
 '(xterm-color-names
   ["#ebdbb2" "#9d0006" "#98971a" "#b57614" "#076678" "#d3869b" "#689d6a" "#32302f"])
 '(xterm-color-names-bright
   ["#fbf1c7" "#af3a03" "#a89984" "#3c3836" "#7c6f64" "#8f3f71" "#665c54" "#282828"]))


(put 'dired-find-alternate-file 'disabled nil)

; set cursor color for multiple frames
(add-to-list 'default-frame-alist '(cursor-color . "#00ff00"))
(setq blink-cursor-blinks 0)

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

(defun my:jump-ten-lines()
  (interactive)
  (next-line)
  (next-line)
  (next-line)
  (next-line)
  (next-line)
  (next-line)
  (next-line)
  (next-line)
  (next-line)
  (next-line)
)
(global-set-key (kbd "C-n") 'my:jump-ten-lines)

(defun my:jump-back-ten-lines()
  (interactive)
  (previous-line)
  (previous-line)
  (previous-line)
  (previous-line)
  (previous-line)
  (previous-line)
  (previous-line)
  (previous-line)
  (previous-line)
  (previous-line)
)
(global-set-key (kbd "C-p") 'my:jump-back-ten-lines)

(defun my:previous-link-center()
  (interactive)
  ;(shr-next-link)
  (Info-prev-reference)
  (recenter)
)
(global-set-key (kbd "<C-iso-lefttab>") 'my:previous-link-center)

(defun my:next-link-center()
  (interactive)
  ;(shr-next-link)
  (Info-next-reference)
  (recenter)
)
(global-set-key (kbd "<C-tab>") 'my:next-link-center)

; paredit
;(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
;(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
;(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
;(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
;(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
;(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
;(add-hook 'scheme-mode-hook           #'enable-paredit-mode)

;(load "~/source/custom_el/custom_projects.el")
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
