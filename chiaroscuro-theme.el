;;; chiaroscuro-theme.el --- Low contrast night theme

;;; Commentary:

;;; Code:

(defvar highlight-1      "")
(defvar highlight-2      "")
(defvar background-color "")
(defvar text-1           "")
(defvar text-2           "")
(defvar text-3           "")
(defvar background-1     "")
(defvar background-2     "")
(defvar background-3     "")
(defvar colorA-1         "")
(defvar colorA-2         "")
(defvar colorA-3         "")
(defvar colorB-1         "")
(defvar colorB-2         "")
(defvar colorB-3         "")
(defvar green-1          "")
(defvar green-2          "")
(defvar green-3          "")
(defvar red-1            "")
(defvar red-2            "")
(defvar red-3            "")

(if (eq CHIAROSCURO_INDEX 2) ;original chiaroscuro theme
    (progn
        (setq highlight-1 "#fff3b6")
        (setq highlight-2 "#dabc14")
        (setq background-color "#000000")
        (setq text-1 "#aaaaaa")
        (setq text-2 "#888888")
        (setq text-3 "#555555")
        (setq background-1 "#222222")
        (setq background-2 "#888888")
        (setq background-3 "#555555")
        (setq colorA-1 "#db7b00")
        (setq colorA-2 "#c7580b")
        (setq colorA-3 "#c7580b")
        (setq colorB-1 "#586cef")
        (setq colorB-2 "#6262b6")
        (setq colorB-3 "#282877")
        (setq green-1 "#00ff00")
        (setq green-2 "#44a536")
        (setq green-3 "#577c52")
        (setq red-1 "#ff0000")
        (setq red-2 "#d23b3b")
        (setq red-3 "#ae6767")
        (setq org-todo-keyword-faces '(("IN-PROGRESS" . (:foreground "#00ff00" :weight bold))))
        )
  )

(if (eq CHIAROSCURO_INDEX 1) ;low contrast chiaroscuro theme
    (progn
        (setq highlight-1 "#cfc594")
        (setq highlight-2 "#dabc14")
        (setq background-color "#333333")
        (setq text-1 "#aaaaaa")
        (setq text-2 "#888888")
        (setq text-3 "#666666")
        (setq background-1 "#444444")
        (setq background-2 "#888888")
        (setq background-3 "#666666")
        (setq colorA-1 "#b76600")
        (setq colorA-2 "#a2531b")
        (setq colorA-2 "#a2531b")
        (setq colorB-1 "#545c94")
        (setq colorB-2 "#6262b6")
        (setq colorB-3 "#282877")
        (setq green-1 "#2d752d")
        (setq green-2 "#35812a")
        (setq green-3 "#577c52")
        (setq red-1 "#872727")
        (setq red-2 "#a84d4d")
        (setq red-3 "#ae6767")
        (setq org-todo-keyword-faces '(("IN-PROGRESS" . (:foreground "#ff0000" :weight bold))))
    )
)

(if (eq CHIAROSCURO_INDEX 0) ;light chiaroscuro theme
    (progn
        (setq highlight-1 "#000000")
        (setq highlight-2 "#aaaaaa");check
        (setq background-color "#c8c7c2")
        (setq text-1 "#888888")
        (setq text-2 "#888888");check 66
        (setq text-3 "#888888");check 44
        (setq background-1 "#b0aeaa")
        (setq background-2 "#b0aeaa");check
        (setq background-3 "#b0aeaa");check
        (setq colorA-1 "#8b3f8b")
        (setq colorA-2 "#8b3f8b");check
        (setq colorA-3 "#8b3f8b");check
        (setq colorB-1 "#b0aeaa");check
        (setq colorB-2 "#b0aeaa");check
        (setq colorB-3 "#b0aeaa");check
        (setq green-1 "#35812a");check
        (setq green-2 "#2d752d");check
        (setq green-3 "#577c52");check
        (setq red-1 "#872727");check
        (setq red-2 "#a84d4d");check
        (setq red-3 "#ae6767");check
        (setq org-todo-keyword-faces '(("IN-PROGRESS" . (:foreground "#ffffff" :weight bold))))
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
  `(default                      ((t (:foreground ,text-1      :background ,background-color))))
  `(cursor                       ((t (:background ,highlight-1                              ))))
  `(link                         ((t (:foreground ,colorB-1    :underline t                 ))))
  `(region                       ((t (:foreground ,highlight-1 :background ,background-1    ))))
  `(highlight                    ((t (:foreground ,highlight-1 :background ,nil             ))))
  `(show-paren-match             ((t (:foreground ,highlight-1 :background ,background-1    ))))
  `(cua-rectangle                ((t (:foreground ,highlight-1 :background ,background-1    ))))
  `(hl-line                      ((t (:foreground ,text-1      :background ,background-1    ))))
                        
  ;font-lock
  `(font-lock-builtin-face       ((t (:foreground ,colorA-1                                 ))))
  `(font-lock-comment-face       ((t (:foreground ,colorA-1                                 ))))
  `(font-lock-negation-char-face ((t (:foreground ,text-1                                   ))))
  `(font-lock-reference-face     ((t (:foreground ,red-1                                    ))))
  `(font-lock-constant-face      ((t (:foreground ,colorA-1                                 ))))
  `(font-lock-doc-face           ((t (:foreground ,colorA-1                                 ))))
  `(font-lock-function-name-face ((t (:foreground ,text-1   :bold t                         ))))
  `(font-lock-keyword-face       ((t (:foreground ,colorA-1 :bold t                         ))))
  `(font-lock-string-face        ((t (:foreground ,colorA-1                                 ))))
  `(font-lock-type-face          ((t (:foreground ,text-1                                   ))))
  `(font-lock-variable-name-face ((t (:foreground ,colorA-1                                 ))))
  `(font-lock-warning-face       ((t (:foreground ,colorB-1 :background ,background-1       ))))
  `(font-lock-builtin-face       ((t (:foreground ,colorA-1                                 ))))
  `(font-lock-comment-face       ((t (:foreground ,colorA-1                                 ))))
  `(font-lock-negation-char-face ((t (:foreground ,text-1                                   ))))
  `(font-lock-reference-face     ((t (:foreground ,red-1                                    ))))
  `(font-lock-constant-face      ((t (:foreground ,colorA-1                                 ))))
  `(font-lock-doc-face           ((t (:foreground ,colorA-1                                 ))))
  `(font-lock-function-name-face ((t (:foreground ,text-1       :bold t                     ))))
  `(font-lock-keyword-face       ((t (:foreground ,colorA-1     :bold t                     ))))
  `(font-lock-string-face        ((t (:foreground ,colorA-1                                 ))))
  `(font-lock-type-face          ((t (:foreground ,text-1                                   ))))
  `(font-lock-variable-name-face ((t (:foreground ,colorA-1                                 ))))
  `(font-lock-warning-face       ((t (:background ,background-1 :foreground ,colorB-1       ))))
                        
  ;helm
  `(helm-minibuffer-prompt            ((t (:foreground ,colorA-1                                              ))))
  `(helm-match                        ((t (:foreground ,colorA-1                                              ))))
  `(helm-candidate-number             ((t (:foreground ,colorA-1                                              ))))
  `(helm-M-x-key                      ((t (:foreground ,colorA-1    :underline t                              ))))
  `(helm-source-header                ((t (:foreground ,colorA-1    :weight bold                              ))))
  `(helm-selection                    ((t (:foreground ,highlight-1                                           ))))
  `(helm-swoop-target-line-face       ((t (:foreground ,highlight-1 :background ,nil                          ))))
  `(helm-swoop-target-word-face       ((t (:foreground ,highlight-1 :background ,colorB-1                     ))))
  `(helm-swoop-line-number-face       ((t (:foreground ,red-1       :background ,colorB-1         :weight bold))))
  `(helm-swoop-target-line-block-face ((t (:foreground ,red-1       :background ,colorB-1                     ))))
  `(helm-selection                    ((t (:foreground ,text-1      :background ,background-color             ))))
  `(helm-swoop-target-word-face       ((t (:foreground ,text-1      :background ,background-color :bold t     ))))
  `(helm-ff-rsync-progress            ((t (:foreground ,colorA-1                                              ))))
  `(helm-ff-rsync-progress            ((t (:foreground ,colorA-1                                              ))))
  `(helm-buffer-saved-out             ((t (:foreground ,colorB-1                                              ))))
                        
  ;elfeed
  `(elfeed-log-date-face            ((t (:foreground ,text-1   :background ,background-color))))
  `(elfeed-log-debug-level-face     ((t (:foreground ,text-1   :background ,background-color))))
  `(elfeed-log-error-level-face     ((t (:foreground ,text-1   :background ,background-color))))
  `(elfeed-log-info-level-face      ((t (:foreground ,text-1   :background ,background-color))))
  `(elfeed-log-warn-level-face      ((t (:foreground ,text-1   :background ,background-color))))
  `(elfeed-search-date-face         ((t (:foreground ,text-1   :background ,background-color))))
  `(elfeed-search-feed-face         ((t (:foreground ,text-1   :background ,background-color))))
  `(elfeed-search-filter-face       ((t (:foreground ,text-1   :background ,background-color))))
  `(elfeed-search-last-update-face  ((t (:foreground ,text-1   :background ,background-color))))
  `(elfeed-search-tag-face          ((t (:foreground ,text-1   :background ,background-color))))
  `(elfeed-search-title-face        ((t (:foreground ,colorA-1 :background ,background-color))))
  `(elfeed-search-unread-count-face ((t (:foreground ,text-1   :background ,background-color))))
  `(elfeed-search-unread-title-face ((t (:foreground ,colorA-1 :background ,background-color))))
  `(message-header-cc               ((t (:foreground ,text-1                                ))))
  `(message-header-name             ((t (:foreground ,text-1                                ))))
  `(message-header-newsgroups       ((t (:foreground ,text-1                                ))))
  `(message-header-other            ((t (:foreground ,text-1                                ))))
  `(message-header-subject          ((t (:foreground ,text-1                                ))))
  `(message-header-to               ((t (:foreground ,text-1                                ))))
  `(header-line                     ((t (:foreground ,text-1                                ))))
                        
  ;magit
  `(magit-header-line                 ((t (:foreground ,colorA-1                                            ))))
  `(magit-section-heading             ((t (:foreground ,colorA-1                                            ))))
  `(magit-branch-current              ((t (:foreground ,highlight-1 :box (:line-width 1 :color ,highlight-1)))))
  `(magit-branch-remote-head          ((t (:foreground ,highlight-1 :box (:line-width 1 :color ,highlight-1)))))
  `(magit-branch-local                ((t (:foreground ,colorA-1                                            ))))
  `(magit-branch-remote               ((t (:foreground ,colorA-1                                            ))))
  `(magit-section-highlight           ((t (:foreground ,highlight-1 :background ,nil                        ))))
  `(magit-log-author                  ((t (:foreground ,colorA-1                                            ))))
  `(magit-log-date                    ((t (:foreground ,colorA-1                                            ))))
  `(magit-keyword-squash              ((t (:foreground ,colorA-1                                            ))))
  `(magit-diff-added                  ((t (:foreground ,green-3     :background ,nil                        ))))
  `(magit-diff-removed                ((t (:foreground ,red-3       :background ,nil                        ))))
  `(magit-diff-context                ((t (:foreground ,text-1      :background ,nil                        ))))
  `(magit-diff-added-highlight        ((t (:foreground ,green-2     :background ,nil                        ))))
  `(magit-diff-removed-highlight      ((t (:foreground ,red-2       :background ,nil                        ))))
  `(magit-diff-context-highlight      ((t (:foreground ,text-1      :background ,nil                        ))))
  `(magit-diff-hunk-region            ((t (:foreground ,colorB-1    :background ,background-color           ))))
  `(magit-diff-conflict-heading       ((t (:foreground ,text-1      :background ,background-1               ))))
  `(magit-diff-file-heading           ((t (:foreground ,highlight-1 :background ,background-1               ))))
  `(magit-diff-file-heading-selection ((t (:foreground ,highlight-1 :background ,background-1               ))))
  `(magit-diff-hunk-heading           ((t (:foreground ,text-1      :background ,background-1               ))))
  `(magit-diff-hunk-heading-selection ((t (:foreground ,text-1      :background ,background-1               ))))
  `(magit-diff-file-heading-highlight ((t (:foreground ,highlight-1 :background ,background-1               ))))
  `(magit-diff-hunk-heading-highlight ((t (:foreground ,text-1      :background ,background-1               ))))
  `(magit-diff-whitespace-warning     ((t (:foreground ,text-1      :background ,red-2                      ))))

  ;org
  `(org-block                       ((t (:foreground ,text-1      :background ,background-color))))
  `(org-table                       ((t (:foreground ,colorB-1    :background ,background-color))))
  `(org-checkbox-statistics-todo    ((t (:foreground ,red-2       :background ,background-color))))
  `(org-checkbox-statistics-done    ((t (:foreground ,green-2     :background ,background-color))))
  `(org-block-begin-line            ((t (:foreground ,text-1                                   ))))
  `(org-block-end-line              ((t (:foreground ,text-1                                   ))))
  `(org-todo                        ((t (:foreground ,red-2       :bold t                      ))))
  `(org-done                        ((t (:foreground ,green-2     :bold t                      ))))
  `(org-agenda-structure            ((t (:foreground ,text-1                                   ))))
  `(org-date                        ((t (:foreground ,colorB-1    :underline t                 ))))
  `(org-scheduled                   ((t (:foreground ,text-1                                   ))))
  `(org-scheduled-today             ((t (:foreground ,text-1                                   ))))
  `(org-agenda-current-time         ((t (:foreground ,text-1                                   ))))
  `(org-time-grid                   ((t (:foreground ,text-1                                   ))))
  `(org-agenda-done                 ((t (:foreground ,text-1                                   ))))
  `(org-agenda-dimmed-todo-face     ((t (:foreground ,text-1                                   ))))
  `(org-agenda-current-time         ((t (:foreground ,text-1                                   ))))
  `(org-scheduled-previously        ((t (:foreground ,red-2                                    ))))
  `(org-headline-todo               ((t (:foreground ,colorA-1                                 ))))
  `(org-headline-done               ((t (:foreground ,colorA-1                                 ))))
  `(org-agenda-date-today           ((t (:foreground ,colorA-1    :bold t                      ))))
  `(org-agenda-clocking             ((t (:foreground ,highlight-2 :background ,colorB-1        ))))
  `(org-warning                     ((t (:foreground ,colorA-1                                 ))))
                        
  ;mode-line
  `(mode-line                       ((t (:foreground ,text-1   :background ,background-1       ))))
  `(mode-line-inactive              ((t (:foreground ,text-1   :background ,background-1       ))))
  `(mode-line-buffer-id             ((t (:foreground ,colorA-1 :bold t                         ))))
  `(doom-modeline-evil-normal-state ((t (:foreground ,colorA-1                                 ))))
  `(doom-modeline-info              ((t (:foreground ,colorA-1                                 ))))
  `(doom-modeline-lsp-success       ((t (:foreground ,colorA-1                                 ))))
  
;  `(default                      ((t (:foreground ,text-1      :background ,background-color))))
;  `(link                         ((t (:foreground ,colorB-1    :underline t                 ))))
;  `(cursor                       ((t (:background ,highlight-1                              ))))
;  `(region                       ((t (:foreground ,highlight-1 :background ,background-1    ))))
;  `(highlight                    ((t (:foreground ,highlight-1 :background ,nil             ))))
;  `(show-paren-match             ((t (:foreground ,highlight-1 :background ,background-1    ))))
;  `(cua-rectangle                ((t (:foreground ,highlight-1 :background ,background-1    ))))

  `(company-echo-common ((t (:foreground ,colorB-1))))
  `(custom-invalid ((t (:background ,red-2 :foreground ,text-1))))
  `(dired-warning ((t (:foreground ,colorA-1))))
  `(eww-valid-certificate ((t (:foreground ,colorA-1 :bold t))))
  `(git-commit-nonempty-second-line ((t (:foreground ,colorA-1))))
  `(git-commit-overlong-summary ((t (:foreground ,colorA-1))))
  `(ido-incomplete-regexp ((t (:foreground ,colorA-1))))
  `(ido-indicator ((t (:background ,red-2 :foreground ,text-1))))
  `(ido-subdir ((t (:foreground ,colorB-1))))
  `(ido-first-match ((t (:foreground ,highlight-1 :bold t))))
  `(ido-only-match ((t (:foreground ,highlight-1 :bold t))))
  `(info-xref-visited ((t (:foreground ,colorA-1 :underline t))))
  `(ivy-current-match ((t (:foreground ,highlight-1 :bold t))))
  `(lsp-lsp-flycheck-warning-unnecessary-face ((t (:background ,background-color :foreground ,colorB-1 :underline t))))
  `(markdown-missing-link-face ((t (:foreground ,colorA-1))))
  `(minibuffer-prompt ((t (:foreground ,colorA-1))))
  `(package-status-disabled ((t (:foreground ,colorA-1))))
  `(package-status-unsigned ((t (:foreground ,colorA-1))))
  `(secondary-selection ((t (:background ,colorA-1 :foreground ,colorB-1))))
  `(transient-argument ((t (:foreground ,colorA-1))))
  `(transient-inactive-argument ((t (:foreground ,colorA-1))))
  `(transient-inactive-value ((t (:foreground ,colorA-1))))
  `(whitespace-space ((t (:foreground ,text-1))))
  `(whitespace-trailing ((t (:foreground ,highlight-1 :bold t))))
)

;;;###autoload
(when load-file-name
     (add-to-list 'custom-theme-load-path
         (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'chiaroscuro)

;;; chiaroscuro-theme.el ends here
