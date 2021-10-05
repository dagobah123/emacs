;;; chiaroscuro-theme.el --- Low contrast night theme

;;; Commentary:

;;; Code:

(defvar highlight-1    "")
(defvar text-A-1       "")
(defvar text-B-1       "")
(defvar text-C-1       "")
(defvar background-A-1 "")
(defvar background-B-1 "")
(defvar background-C-1 "")
(defvar green-A-1      "")
(defvar green-A-2      "")
(defvar green-A-3      "")
(defvar red-A-1        "")
(defvar red-A-2        "")
(defvar red-A-3        "")

(if (eq CHIAROSCURO_INDEX 2) ;original chiaroscuro theme
    (progn
        (setq highlight-1 "#fff3b6")
        (setq background-A-1 "#000000")
        (setq text-A-1 "#aaaaaa")
        (setq text-B-1 "#888888")
        (setq text-C-1 "#555555")
        (setq background-A-1 "#222222")
        (setq background-B-1 "#888888")
        (setq background-C-1 "#555555")
        (setq text-A-1 "#db7b00")
        (setq text-B-1 "#c7580b")
        (setq text-C-1 "#c7580b")
        (setq green-A-1 "#00ff00")
        (setq green-A-2 "#44a536")
        (setq green-A-3 "#577c52")
        (setq red-A-1 "#ff0000")
        (setq red-A-2 "#d23b3b")
        (setq red-A-3 "#ae6767")
        ;(setq org-todo-keyword-faces '(("IN-PROGRESS" . (:foreground "#00ff00" :weight bold))))
        )
  )

(if (eq CHIAROSCURO_INDEX 1) ;low contrast chiaroscuro theme
    (progn
        (setq highlight-1 "#cfc594")
        (setq background-A-1 "#333333")
        (setq text-A-1 "#aaaaaa")
        (setq text-B-1 "#b76600")
        (setq text-C-1 "#545c94")
        (setq background-A-1 "#444444")
        (setq background-A-1 "#888888")
        (setq background-A-1 "#666666")
        (setq green-A-1 "#2d752d")
        (setq green-A-2 "#35812a")
        (setq green-A-3 "#577c52")
        (setq red-A-1 "#872727")
        (setq red-A-2 "#a84d4d")
        (setq red-A-3 "#ae6767")
        ;(setq org-todo-keyword-faces '(("IN-PROGRESS" . (:foreground "#ff0000" :weight bold))))
    )
)

(if (eq CHIAROSCURO_INDEX 0) ;light chiaroscuro theme
    (progn
        (setq highlight-1 "#000000")
        (setq text-A-1 "#444444") ;main text
        (setq text-B-1 "#999999")
        (setq text-C-1 "#ff0000")
        (setq background-A-1 "#dddddd")
        (setq background-B-1 "#cccccc")
        (setq background-C-1 "#000000")
        (setq green-A-1 "#22aa22")
        (setq green-A-2 "#cceecc")
        (setq red-A-1 "#ac2222")
        (setq red-A-2 "#eecccc")
        ;(setq org-todo-keyword-faces '(("IN-PROGRESS" . (:foreground "#ffffff" :weight bold))))
    )
)

(setq CHIAROSCURO_INDEX (+ CHIAROSCURO_INDEX 1))

(if (> CHIAROSCURO_INDEX 2)
    (progn
        (setq CHIAROSCURO_INDEX 0)
    )
)

(deftheme chiaroscuro)

;(defun my:theme-base()
;  (interactive)
;  (set-face-attribute 'default nil :background background-color)
;  (set-face-attribute 'link    nil :foreground colorB-1 :underline t)
;)

(custom-theme-set-faces 'chiaroscuro

  ;base
  `(default                      ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(cursor                       ((t (                      :background ,background-C-1))))
  `(link                         ((t (:foreground ,text-A-1 :underline t               ))))
  `(region                       ((t (:foreground ,text-A-1 :background ,background-B-1))))
  `(cua-rectangle                ((t (:foreground ,text-A-1 :background ,background-B-1))))
  `(highlight                    ((t (:foreground ,text-A-1 :background ,nil           ))))
  `(show-paren-match             ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(hl-line                      ((t (:foreground ,text-A-1 :background ,background-A-1))))

  ;font-lock
  `(font-lock-negation-char-face ((t (:foreground ,text-A-1                            ))))
  `(font-lock-function-name-face ((t (:foreground ,text-A-1 :bold t                    ))))
  `(font-lock-string-face        ((t (:foreground ,text-B-1                            ))))
  `(font-lock-type-face          ((t (:foreground ,text-B-1                            ))))
  `(font-lock-variable-name-face ((t (:foreground ,text-A-1 :bold t                    ))))
  `(font-lock-warning-face       ((t (:foreground ,text-A-1                            ))))
  `(font-lock-builtin-face       ((t (:foreground ,text-A-1                            ))))
  `(font-lock-comment-face       ((t (:foreground ,text-B-1                            ))))
  `(font-lock-reference-face     ((t (:foreground ,text-A-1                            ))))
  `(font-lock-constant-face      ((t (:foreground ,text-A-1                            ))))
  `(font-lock-doc-face           ((t (:foreground ,text-A-1                            ))))
  `(font-lock-keyword-face       ((t (:foreground ,text-A-1 :bold t                    ))))
  `(font-lock-string-face        ((t (:foreground ,text-A-1                            ))))
  `(font-lock-type-face          ((t (:foreground ,text-A-1                            ))))
  `(font-lock-variable-name-face ((t (:foreground ,text-A-1                            ))))
  `(font-lock-warning-face       ((t (:foreground ,text-A-1 :background ,background-A-1))))

  ;helm
  `(helm-minibuffer-prompt            ((t (:foreground ,text-A-1                                         ))))
  `(helm-match                        ((t (:foreground ,text-A-1                                         ))))
  `(helm-candidate-number             ((t (:foreground ,text-A-1                                         ))))
  `(helm-M-x-key                      ((t (:foreground ,text-A-1 :underline t                            ))))
  `(helm-source-header                ((t (:foreground ,text-A-1 :bold t                                 ))))
  `(helm-selection                    ((t (:foreground ,text-A-1 :bold t                                 ))))
  `(helm-swoop-target-line-face       ((t (:foreground ,text-A-1 :bold t                                 ))))
  `(helm-swoop-target-word-face       ((t (:foreground ,text-A-1 :background ,background-B-1             ))))
  `(helm-swoop-line-number-face       ((t (:foreground ,text-A-1 :background ,background-A-1 :weight bold))))
  `(helm-swoop-target-line-block-face ((t (:foreground ,text-A-1 :background ,background-A-1             ))))
  `(helm-selection                    ((t (:foreground ,text-A-1 :background ,background-A-1             ))))
  `(helm-swoop-target-word-face       ((t (:foreground ,text-A-1 :background ,background-A-1 :bold t     ))))
  `(helm-ff-rsync-progress            ((t (:foreground ,text-A-1                                         ))))
  `(helm-ff-rsync-progress            ((t (:foreground ,text-A-1                                         ))))
  `(helm-buffer-saved-out             ((t (:foreground ,text-A-1                                         ))))

  ;elfeed
  `(elfeed-log-date-face            ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(elfeed-log-debug-level-face     ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(elfeed-log-error-level-face     ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(elfeed-log-info-level-face      ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(elfeed-log-warn-level-face      ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(elfeed-search-date-face         ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(elfeed-search-feed-face         ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(elfeed-search-filter-face       ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(elfeed-search-last-update-face  ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(elfeed-search-tag-face          ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(elfeed-search-title-face        ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(elfeed-search-unread-count-face ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(elfeed-search-unread-title-face ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(message-header-cc               ((t (:foreground ,text-A-1                            ))))
  `(message-header-name             ((t (:foreground ,text-A-1                            ))))
  `(message-header-newsgroups       ((t (:foreground ,text-A-1                            ))))
  `(message-header-other            ((t (:foreground ,text-A-1                            ))))
  `(message-header-subject          ((t (:foreground ,text-A-1                            ))))
  `(message-header-to               ((t (:foreground ,text-A-1                            ))))
  `(header-line                     ((t (:foreground ,text-A-1                            ))))

  ;magit
  `(magit-header-line                 ((t (:foreground ,text-A-1                                          ))))
  `(magit-section-heading             ((t (:foreground ,text-A-1                                          ))))
  `(magit-branch-current              ((t (:foreground ,text-A-1  :box (:line-width 1 :color ,highlight-1)))))
  `(magit-branch-remote-head          ((t (:foreground ,text-A-1  :box (:line-width 1 :color ,highlight-1)))))
  `(magit-branch-local                ((t (:foreground ,text-A-1                                          ))))
  `(magit-branch-remote               ((t (:foreground ,text-A-1                                          ))))
  `(magit-section-highlight           ((t (:foreground ,text-A-1  :background ,nil                        ))))
  `(magit-log-author                  ((t (:foreground ,text-A-1                                          ))))
  `(magit-log-date                    ((t (:foreground ,text-A-1                                          ))))
  `(magit-keyword-squash              ((t (:foreground ,text-A-1                                          ))))
  `(magit-diff-context                ((t (:foreground ,text-A-1  :background ,nil                        ))))
  `(magit-diff-context-highlight      ((t (:foreground ,text-A-1  :background ,nil                        ))))
  `(magit-diff-hunk-region            ((t (:foreground ,text-A-1  :background ,background-B-1             ))))
  `(magit-diff-conflict-heading       ((t (:foreground ,text-A-1  :background ,background-B-1             ))))
  `(magit-diff-file-heading           ((t (:foreground ,text-A-1  :background ,background-B-1             ))))
  `(magit-diff-file-heading-selection ((t (:foreground ,text-A-1  :background ,background-B-1             ))))
  `(magit-diff-hunk-heading           ((t (:foreground ,text-B-1  :background ,background-B-1             ))))
  `(magit-diff-hunk-heading-selection ((t (:foreground ,text-A-1  :background ,background-B-1             ))))
  `(magit-diff-file-heading-highlight ((t (:foreground ,text-A-1  :background ,background-B-1             ))))
  `(magit-diff-hunk-heading-highlight ((t (:foreground ,text-A-1  :background ,background-B-1             ))))
  `(magit-diff-whitespace-warning     ((t (:foreground ,text-A-1  :background ,red-A-2                    ))))
  `(magit-diff-added-highlight        ((t (:foreground ,green-A-1 :background ,green-A-2                  ))))
  `(magit-diff-added                  ((t (:foreground ,text-B-1  :background ,green-A-2                  ))))
  `(magit-diff-removed-highlight      ((t (:foreground ,red-A-1   :background ,red-A-2                    ))))
  `(magit-diff-removed                ((t (:foreground ,text-B-1  :background ,red-A-2                    ))))

  ;org
  `(org-block                       ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(org-table                       ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(org-checkbox-statistics-todo    ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(org-checkbox-statistics-done    ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(org-block-begin-line            ((t (:foreground ,text-A-1                            ))))
  `(org-block-end-line              ((t (:foreground ,text-A-1                            ))))
  `(org-todo                        ((t (:foreground ,text-A-1 :bold t                    ))))
  `(org-done                        ((t (:foreground ,text-A-1 :bold t                    ))))
  `(org-agenda-structure            ((t (:foreground ,text-A-1                            ))))
  `(org-date                        ((t (:foreground ,text-A-1 :underline t               ))))
  `(org-scheduled                   ((t (:foreground ,text-A-1                            ))))
  `(org-scheduled-today             ((t (:foreground ,text-A-1                            ))))
  `(org-agenda-current-time         ((t (:foreground ,text-A-1                            ))))
  `(org-time-grid                   ((t (:foreground ,text-A-1                            ))))
  `(org-agenda-done                 ((t (:foreground ,text-A-1                            ))))
  `(org-agenda-dimmed-todo-face     ((t (:foreground ,text-A-1                            ))))
  `(org-agenda-current-time         ((t (:foreground ,text-A-1                            ))))
  `(org-scheduled-previously        ((t (:foreground ,text-A-1                            ))))
  `(org-headline-todo               ((t (:foreground ,text-A-1                            ))))
  `(org-headline-done               ((t (:foreground ,text-A-1                            ))))
  `(org-agenda-date-today           ((t (:foreground ,text-A-1 :bold t                    ))))
  `(org-agenda-clocking             ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(org-warning                     ((t (:foreground ,text-A-1                            ))))

  ;mode-line
  `(mode-line                         ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(mode-line-inactive                ((t (:foreground ,text-A-1 :background ,background-A-1))))
  `(mode-line-buffer-id               ((t (:foreground ,text-A-1 :bold t                    ))))
  `(doom-modeline-bar                 ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-bar-inactive        ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-battery-charging    ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-battery-critical    ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-battery-error       ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-battery-full        ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-battery-normal      ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-battery-warning     ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-buffer-file         ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-buffer-major-mode   ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-buffer-minor-mode   ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-buffer-modified     ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-buffer-path         ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-buffer-timemachine  ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-debug               ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-debug-visual        ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-evil-emacs-state    ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-evil-insert-state   ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-evil-motion-state   ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-evil-normal-state   ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-evil-operator-state ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-evil-replace-state  ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-evil-visual-state   ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-highlight           ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-host                ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-info                ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-input-method        ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-input-method-alt    ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-lsp-error           ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-lsp-running         ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-lsp-success         ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-lsp-warning         ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-notification        ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-panel               ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-urgent              ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-vspc-face           ((t (:foreground ,text-A-1                            ))))
  `(doom-modeline-warning             ((t (:foreground ,text-A-1                            ))))

  `(all-the-icons-blue       ((t (:foreground ,text-A-1))))
  `(all-the-icons-blue-alt   ((t (:foreground ,text-A-1))))
  `(all-the-icons-cyan       ((t (:foreground ,text-A-1))))
  `(all-the-icons-cyan-alt   ((t (:foreground ,text-A-1))))
  `(all-the-icons-dblue      ((t (:foreground ,text-A-1))))
  `(all-the-icons-dcyan      ((t (:foreground ,text-A-1))))
  `(all-the-icons-dgreen     ((t (:foreground ,text-A-1))))
  `(all-the-icons-dmaroon    ((t (:foreground ,text-A-1))))
  `(all-the-icons-dorange    ((t (:foreground ,text-A-1))))
  `(all-the-icons-dpink      ((t (:foreground ,text-A-1))))
  `(all-the-icons-dpurple    ((t (:foreground ,text-A-1))))
  `(all-the-icons-dred       ((t (:foreground ,text-A-1))))
  `(all-the-icons-dsilver    ((t (:foreground ,text-A-1))))
  `(all-the-icons-dyellow    ((t (:foreground ,text-A-1))))
  `(all-the-icons-green      ((t (:foreground ,text-A-1))))
  `(all-the-icons-lblue      ((t (:foreground ,text-A-1))))
  `(all-the-icons-lcyan      ((t (:foreground ,text-A-1))))
  `(all-the-icons-lgreen     ((t (:foreground ,text-A-1))))
  `(all-the-icons-lmaroon    ((t (:foreground ,text-A-1))))
  `(all-the-icons-lorange    ((t (:foreground ,text-A-1))))
  `(all-the-icons-lpink      ((t (:foreground ,text-A-1))))
  `(all-the-icons-lpurple    ((t (:foreground ,text-A-1))))
  `(all-the-icons-lred       ((t (:foreground ,text-A-1))))
  `(all-the-icons-lsilver    ((t (:foreground ,text-A-1))))
  `(all-the-icons-lyellow    ((t (:foreground ,text-A-1))))
  `(all-the-icons-maroon     ((t (:foreground ,text-A-1))))
  `(all-the-icons-orange     ((t (:foreground ,text-A-1))))
  `(all-the-icons-pink       ((t (:foreground ,text-A-1))))
  `(all-the-icons-purple     ((t (:foreground ,text-A-1))))
  `(all-the-icons-purple-alt ((t (:foreground ,text-A-1))))
  `(all-the-icons-red        ((t (:foreground ,text-A-1))))
  `(all-the-icons-red-alt    ((t (:foreground ,text-A-1))))
  `(all-the-icons-silver     ((t (:foreground ,text-A-1))))
  `(all-the-icons-yellow     ((t (:foreground ,text-A-1))))

  `(whitespace-big-indent       ((t (:foreground ,text-B-1 :background ,background-A-1))))
  `(whitespace-empty            ((t (:foreground ,text-B-1 :background ,background-A-1))))
  `(whitespace-hspace           ((t (:foreground ,text-B-1 :background ,background-A-1))))
  `(whitespace-indentation      ((t (:foreground ,text-B-1 :background ,background-A-1))))
  `(whitespace-line             ((t (:foreground ,text-B-1 :background ,background-A-1))))
  `(whitespace-newline          ((t (:foreground ,text-B-1 :background ,background-A-1))))
  `(whitespace-space            ((t (:foreground ,text-B-1 :background ,background-A-1))))
  `(whitespace-space-after-tab  ((t (:foreground ,text-B-1 :background ,background-A-1))))
  `(whitespace-space-before-tab ((t (:foreground ,text-B-1 :background ,background-A-1))))
  `(whitespace-tab              ((t (:foreground ,text-B-1 :background ,background-A-1))))
  `(whitespace-trailing         ((t (:foreground ,text-B-1 :background ,background-A-1))))
  
;  `(company-echo-common ((t (:foreground ,colorB-1))))
;  `(custom-invalid ((t (:background ,red-2 :foreground ,text-1))))
;  `(dired-warning ((t (:foreground ,colorA-1))))
;  `(eww-valid-certificate ((t (:foreground ,colorA-1 :bold t))))
;  `(git-commit-nonempty-second-line ((t (:foreground ,colorA-1))))
;  `(git-commit-overlong-summary ((t (:foreground ,colorA-1))))
;  `(ido-incomplete-regexp ((t (:foreground ,colorA-1))))
;  `(ido-indicator ((t (:background ,red-2 :foreground ,text-1))))
;  `(ido-subdir ((t (:foreground ,colorB-1))))
;  `(ido-first-match ((t (:foreground ,highlight-1 :bold t))))
;  `(ido-only-match ((t (:foreground ,highlight-1 :bold t))))
;  `(info-xref-visited ((t (:foreground ,colorA-1 :underline t))))
;  `(ivy-current-match ((t (:foreground ,highlight-1 :bold t))))
;  `(lsp-lsp-flycheck-warning-unnecessary-face ((t (:background ,background-color :foreground ,colorB-1 :underline t))))
;  `(markdown-missing-link-face ((t (:foreground ,colorA-1))))
;  `(minibuffer-prompt ((t (:foreground ,colorA-1))))
;  `(package-status-disabled ((t (:foreground ,colorA-1))))
;  `(package-status-unsigned ((t (:foreground ,colorA-1))))
;  `(secondary-selection ((t (:background ,colorA-1 :foreground ,colorB-1))))
;  `(transient-argument ((t (:foreground ,colorA-1))))
;  `(transient-inactive-argument ((t (:foreground ,colorA-1))))
;  `(transient-inactive-value ((t (:foreground ,colorA-1))))
;  `(whitespace-space ((t (:foreground ,text-1))))
;  `(whitespace-trailing ((t (:foreground ,highlight-1 :bold t))))
)

;;;###autoload
(when load-file-name
     (add-to-list 'custom-theme-load-path
         (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'chiaroscuro)

;;; chiaroscuro-theme.el ends here
