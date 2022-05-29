;;; chiaroscuro-theme.el --- Theme consisting of multiple themes

;;; Commentary:

;;; Code:

(defvar text-1                               "#000000")
(defvar text-2                               "#000000")
(defvar text-3                               "#000000")
(defvar text-4                               "#000000")
(defvar text-hl                              "#000000")
(defvar background-hl                        "#000000")
(defvar text-match                           "#000000")
(defvar text-diff-added                      "#000000")
(defvar text-diff-removed                    "#000000")
(defvar background-1                         "#000000")
(defvar background-2                         "#000000")
(defvar background-3                         "#000000")
(defvar background-4                         "#000000")
(defvar background-5                         "#000000")
(defvar background-6                         "#000000")
(defvar background-7                         "#000000")
(defvar background-mode-line-fringe          "#000000")
(defvar background-match                     "#000000")
(defvar background-cursor                    "#000000")
(defvar background-diff-added                "#000000")
(defvar background-diff-removed              "#000000")
(defvar background-current-diff-A            "#000000")
(defvar background-current-diff-B            "#000000")
(defvar background-current-diff-C            "#000000")
(defvar background-fine-diff-A               "#000000")
(defvar background-fine-diff-B               "#000000")
(defvar background-fine-diff-C               "#000000")
(defvar background-ediff                     "#000000")
(defvar text-buffer-id                       "#000000")
(defvar background-buffer-id                 "#000000")
(defvar text-telephone-line-projectile       "#000000")
(defvar background-telephone-line-projectile "#000000")
(defvar green-1                              "#000000")
(defvar green-2                              "#000000")
(defvar red-1                                "#000000")
(defvar red-2                                "#000000")
(defvar blue-1                               "#000000")
(defvar blue-2                               "#000000")
(defvar yellow-1                             "#000000")
(defvar yellow-2                             "#000000")
(defvar violet-1                             "#000000")
(defvar violet-2                             "#000000")
(defvar orange-1                             "#000000")
(defvar orange-2                             "#000000")
(defvar gray-1                               "#000000")
(defvar gray-2                               "#000000")
(defvar white-1                              "#ffffff")
(defvar line-number-1                        "#000000")
(defvar line-number-2                        "#000000")
(defvar line-number-3                        "#000000")
(defvar line-number-4                        "#000000")
(defvar evil-emacs-1                         "#ffffff")
(defvar evil-emacs-2                         "#bf3eff") ;violet
(defvar evil-normal-1                        "#ffffff")
(defvar evil-normal-2                        "#00cc00") ;green
(defvar evil-insert-1                        "#ffffff")
(defvar evil-insert-2                        "#dd0000") ;red
(defvar evil-replace-1                       "#ffffff")
(defvar evil-replace-2                       "#dd0000") ;red
(defvar evil-replace-1                       "#ffffff")
(defvar evil-replace-2                       "#ffa500") ;orange
(defvar evil-visual-1                        "#ffffff")
(defvar evil-visual-2                        "#ffb90f") ;yellow
(defvar evil-motion-1                        "#ffffff")
(defvar evil-motion-2                        "#4876ff") ;blue
(defvar evil-operator-1                      "#ffffff")
(defvar evil-operator-2                      "#4876ff") ;blue
(defvar text-error                           "#dd0000")

(if (eq CHIAROSCURO_INDEX 5) (progn (load-file "~/.emacs.d/theme_default_light.el")))
(if (eq CHIAROSCURO_INDEX 4) (progn (load-file "~/.emacs.d/theme_default_dark.el")))
(if (eq CHIAROSCURO_INDEX 3) (progn (load-file "~/.emacs.d/theme_default_dark.el")))
(if (eq CHIAROSCURO_INDEX 2) (progn (load-file "~/.emacs.d/theme_default_dark.el")))
(if (eq CHIAROSCURO_INDEX 1) (progn (load-file "~/.emacs.d/theme_default_light.el")))

(if (eq CHIAROSCURO_INDEX 5) (progn (load-file "~/.emacs.d/theme_white.el")))
(if (eq CHIAROSCURO_INDEX 4) (progn (load-file "~/.emacs.d/theme_terminal.el")))
(if (eq CHIAROSCURO_INDEX 3) (progn (load-file "~/.emacs.d/theme_linux.el")))
(if (eq CHIAROSCURO_INDEX 2) (progn (load-file "~/.emacs.d/theme_caravaggio.el")))
(if (eq CHIAROSCURO_INDEX 1) (progn (load-file "~/.emacs.d/theme_light.el")))

(if (> CHIAROSCURO_INDEX 4) (progn (setq CHIAROSCURO_INDEX 0)))
(if (< CHIAROSCURO_INDEX 0) (progn (setq CHIAROSCURO_INDEX 4)))

(deftheme chiaroscuro)

(custom-theme-set-faces 'chiaroscuro

;base
`(default                  ((t (:foreground ,text-1   :background ,background-1                ))))
`(cursor                   ((t (                      :background ,background-cursor           ))))
`(link                     ((t (:foreground ,text-1   :underline t                             ))))
`(region                   ((t (:foreground ,text-1   :background ,background-5                ))))
`(cua-rectangle            ((t (:foreground ,text-1   :background ,background-5                ))))
`(highlight                ((t (:foreground ,text-1   :background ,nil                         ))))
`(show-paren-match         ((t (:foreground ,text-hl  :background ,background-5                ))))
`(hl-line                  ((t (:foreground ,text-hl  :background ,background-hl               ))))
`(fringe                   ((t (:foreground ,text-1   :background ,background-mode-line-fringe ))))
`(minibuffer-prompt        ((t (:foreground ,text-1   :background ,background-1                ))))
`(ido-first-match          ((t (:foreground ,text-match :background ,background-match :bold t            ))))
`(ido-only-match           ((t (:foreground ,text-match :background ,background-match :bold t            ))))
`(lsp-face-highlight-read  ((t (:foreground ,text-match :background ,background-match :bold t            ))))
`(lsp-face-highlight-write ((t (:foreground ,text-match :background ,background-match :bold t            ))))
`(eshell-prompt            ((t (:foreground ,text-2   :background ,background-1 :bold t        ))))
`(secondary-selection      ((t (:foreground ,blue-1   :background ,blue-2 :bold t              ))))
`(git-commit-summary       ((t (:foreground ,blue-1   :background ,blue-2                      ))))

;line number
`(line-number-current-line ((t (:foreground ,line-number-1 :background ,line-number-2 :bold t ))))
`(line-number              ((t (:foreground ,line-number-3 :background ,line-number-4         ))))
`(line-number-major-tick   ((t (:foreground ,line-number-3 :background ,line-number-4         ))))
`(line-number-minor-tick   ((t (:foreground ,line-number-3 :background ,line-number-4         ))))

;font-lock
`(font-lock-builtin-face              ((t (:foreground ,text-1                                          ))))
`(font-lock-comment-delimiter-face    ((t (:foreground ,text-2                                          ))))
`(font-lock-comment-face              ((t (:foreground ,text-2                                          ))))
`(font-lock-constant-face             ((t (:foreground ,orange-1                                        ))))
`(font-lock-doc-face                  ((t (:foreground ,text-2                                          ))))
`(font-lock-function-name-face        ((t (:foreground ,green-1  :background ,green-2      :bold t      ))))
`(font-lock-keyword-face              ((t (:foreground ,yellow-1 :background ,nil          :bold t      ))))
`(font-lock-negation-char-face        ((t (:foreground ,text-1                                          ))))
`(font-lock-preprocessor-face         ((t (:foreground ,violet-1                                        ))))
`(font-lock-regexp-grouping-backslash ((t (:foreground ,text-1                                          ))))
`(font-lock-regexp-grouping-construct ((t (:foreground ,text-1                                          ))))
`(font-lock-string-face               ((t (:foreground ,text-2                                          ))))
`(font-lock-type-face                 ((t (:foreground ,red-1    :bold t                   :italic t    ))))
`(font-lock-variable-name-face        ((t (:foreground ,blue-1   :background ,nil          :bold t      ))))
`(font-lock-warning-face              ((t (:foreground ,text-1   :background ,background-1 :underline t ))))

;dired
`(dired-directory    ((t (:foreground ,violet-1 :background, violet-2     ))))
`(dired-flagged      ((t (:foreground ,red-1    :background, red-2        ))))
`(dired-header       ((t (:foreground ,text-1   :background, background-1 ))))
`(dired-ignored      ((t (:foreground ,text-1   :background, background-1 ))))
`(dired-mark         ((t (:foreground ,red-1    :background, red-2        ))))
`(dired-marked       ((t (:foreground ,red-1    :background, red-2        ))))
`(dired-narrow-blink ((t (:foreground ,text-1   :background, background-1 ))))
`(dired-perm-write   ((t (:foreground ,text-1   :background, background-1 ))))
`(dired-set-id       ((t (:foreground ,text-1   :background, background-1 ))))
`(dired-symlink      ((t (:foreground ,text-1   :background, background-1 ))))
`(dired-warning      ((t (:foreground ,text-1   :background, background-1 ))))
`(dired-special      ((t (:foreground ,violet-1                           ))))

;helm
`(helm-minibuffer-prompt            ((t (:foreground ,text-1     :background ,background-1              ))))
`(helm-match                        ((t (:foreground ,text-1                                            ))))
`(helm-candidate-number             ((t (:foreground ,text-1                                            ))))
`(helm-M-x-key                      ((t (:foreground ,text-1     :underline t                           ))))
`(helm-source-header                ((t (:foreground ,text-1     :bold t                                ))))
`(helm-selection                    ((t (:foreground ,text-match :background ,background-match :bold t  ))))
`(helm-swoop-target-line-face       ((t (:foreground ,text-match :background ,background-match :bold t  ))))
`(helm-swoop-target-word-face       ((t (:foreground ,text-match :background ,background-match :bold t  ))))
`(helm-swoop-line-number-face       ((t (:foreground ,text-1     :background ,background-1 :weight bold ))))
`(helm-swoop-target-line-block-face ((t (:foreground ,text-1     :background ,background-1              ))))
`(helm-ff-rsync-progress            ((t (:foreground ,text-1                                            ))))
`(helm-ff-rsync-progress            ((t (:foreground ,text-1                                            ))))
`(helm-buffer-saved-out             ((t (:foreground ,text-1                                            ))))
`(helm-ff-prefix                    ((t (:foreground ,text-match :background ,background-match          ))))
`(helm-buffer-directory             ((t (:foreground ,text-match :background ,background-match          ))))
`(helm-ff-directory                 ((t (:foreground ,text-match :background ,background-match          ))))
`(helm-ff-dotted-directory          ((t (:foreground ,text-match :background ,background-match          ))))
`(helm-ff-file-extension            ((t (:foreground ,green-1    :background ,green-2                   ))))
`(helm-grep-file                    ((t (:foreground ,text-1     :background ,nil :bold t :underline t  ))))
`(helm-grep-finish                  ((t (:foreground ,text-match :background ,background-match                  ))))
`(helm-grep-lineno                  ((t (:foreground ,text-2                                            ))))
`(helm-grep-match                   ((t (:foreground ,text-match :background ,background-match          ))))
`(markdown-highlighting-face        ((t (:foreground ,green-1    :background ,green-2                   ))))
`(helm-header-line-left-margin      ((t (:foreground ,green-1    :background ,green-2                   ))))
`(cua-global-mark                   ((t (:foreground ,green-1    :background ,green-2                   ))))
`(helm-match-item                   ((t (:foreground ,text-match :background ,background-match :weight bold     ))))
`(helm-separator                    ((t (:foreground ,yellow-1   :background ,yellow-2                  ))))
`(helm-lisp-completion-info         ((t (:foreground ,yellow-1   :background ,yellow-2                  ))))
`(ivy-match-required-face           ((t (:foreground ,yellow-1   :background ,yellow-2                  ))))
`(transient-red                     ((t (:foreground ,yellow-1   :background ,yellow-2                  ))))
`(info-menu-star                    ((t (:foreground ,yellow-1   :background ,yellow-2                  ))))
`(helm-ff-denied                    ((t (:foreground ,yellow-1   :background ,yellow-2                  ))))

;ido
`(ido-subdir ((t (:foreground ,text-1))))

;elfeed
`(elfeed-log-date-face            ((t (:foreground ,text-1 :background ,background-1 ))))
`(elfeed-log-debug-level-face     ((t (:foreground ,text-1 :background ,background-1 ))))
`(elfeed-log-error-level-face     ((t (:foreground ,text-1 :background ,background-1 ))))
`(elfeed-log-info-level-face      ((t (:foreground ,text-1 :background ,background-1 ))))
`(elfeed-log-warn-level-face      ((t (:foreground ,text-1 :background ,background-1 ))))
`(elfeed-search-date-face         ((t (:foreground ,text-1 :background ,background-1 ))))
`(elfeed-search-feed-face         ((t (:foreground ,text-1 :background ,background-1 ))))
`(elfeed-search-filter-face       ((t (:foreground ,text-1 :background ,background-1 ))))
`(elfeed-search-last-update-face  ((t (:foreground ,text-1 :background ,background-1 ))))
`(elfeed-search-tag-face          ((t (:foreground ,text-1 :background ,background-1 ))))
`(elfeed-search-title-face        ((t (:foreground ,text-1 :background ,background-1 ))))
`(elfeed-search-unread-count-face ((t (:foreground ,text-1 :background ,background-1 ))))
`(elfeed-search-unread-title-face ((t (:foreground ,text-1 :background ,background-1 ))))
`(message-header-cc               ((t (:foreground ,text-1                           ))))
`(message-header-name             ((t (:foreground ,text-1                           ))))
`(message-header-newsgroups       ((t (:foreground ,text-1                           ))))
`(message-header-other            ((t (:foreground ,text-1                           ))))
`(message-header-subject          ((t (:foreground ,text-1                           ))))
`(message-header-to               ((t (:foreground ,text-1                           ))))
`(header-line                     ((t (:foreground ,text-1                           ))))

;magit
`(magit-hash                        ((t (:foreground ,text-2                                                                                   ))))
`(magit-header-line                 ((t (:foreground ,text-1            :bold t                                                                ))))
`(magit-section-heading             ((t (:foreground ,text-1                                                                                   ))))
`(magit-branch-current              ((t (:foreground ,text-magit-branch-local           :background ,background-magit-branch-local      :bold t :box (:line-width 3 :color ,text-magit-branch-local) ))))
`(magit-branch-local                ((t (:foreground ,text-magit-branch-local           :background ,background-magit-branch-local      :bold t :box (:line-width 3 :color ,text-magit-branch-local) ))))
`(magit-branch-remote               ((t (:foreground ,text-magit-branch-remote           :background ,background-magit-branch-remote        :bold t :box (:line-width 3 :color ,text-magit-branch-remote) ))))
`(magit-branch-remote-head          ((t (:foreground ,text-magit-branch-remote           :background ,background-magit-branch-remote        :bold t :box (:line-width 3 :color ,text-magit-branch-remote) ))))
`(magit-branch-upstream             ((t (:foreground ,text-magit-branch-remote           :background ,background-magit-branch-remote        :bold t :box (:line-width 3 :color ,text-magit-branch-remote) ))))
`(magit-section-highlight           ((t (                               :background ,background-7 :bold t                                      ))))
`(magit-log-author                  ((t (:foreground ,text-2                                                                                   ))))
`(magit-log-date                    ((t (:foreground ,text-2                                                                                   ))))
`(magit-keyword-squash              ((t (:foreground ,text-1                                                                                   ))))

`(magit-diff-context                ((t (:foreground ,gray-2            :background ,nil                                                       ))))
`(magit-diff-context-highlight      ((t (:foreground ,gray-1            :background ,background-6                                              ))))

`(magit-diff-hunk-region            ((t (:foreground ,gray-2            :background ,background-7                                                       ))))
`(magit-diff-conflict-heading       ((t (:foreground ,gray-2            :background ,background-7                                                       ))))

`(magit-diff-file-heading           ((t (:foreground ,gray-2            :background ,background-7 :bold t                                               ))))
`(magit-diff-file-heading-selection ((t (:foreground ,green-1           :background ,background-7 :bold t                                               ))))
`(magit-diff-file-heading-highlight ((t (:foreground ,green-1           :background ,background-7 :bold t                                               ))))

`(magit-diff-hunk-heading           ((t (:foreground ,gray-2            :background ,background-7                                                  ))))
`(magit-diff-hunk-heading-selection ((t (:foreground ,green-1           :background ,background-7                                                  ))))
`(magit-diff-hunk-heading-highlight ((t (:foreground ,green-1           :background ,background-7                                                  ))))

`(magit-diff-whitespace-warning     ((t (:foreground ,text-1            :background ,text-error                                                     ))))

`(magit-diff-added-highlight        ((t (:foreground ,text-diff-added   :background ,background-diff-added                                     ))))
`(magit-diff-removed-highlight      ((t (:foreground ,text-diff-removed :background ,background-diff-removed                                   ))))

`(magit-diff-added                  ((t (:foreground ,gray-1            :background ,nil                                                       ))))
`(magit-diff-removed                ((t (:foreground ,gray-1            :background ,nil                                                       ))))

`(magit-blame-heading               ((t (:foreground ,gray-1            :background ,background-3 :bold t                                      ))))
`(magit-blame-highlight             ((t (:foreground ,gray-1            :background ,background-3 :bold t                                      ))))
`(magit-blame-margin                ((t (:foreground ,gray-1            :background ,background-3 :bold t                                      ))))

;ediff
`(ediff-current-diff-A        ((t (:foreground ,text-1 :background ,background-current-diff-A ))))
`(ediff-current-diff-Ancestor ((t (:foreground ,text-1 :background ,violet-2                  ))))
`(ediff-current-diff-B        ((t (:foreground ,text-1 :background ,background-current-diff-B ))))
`(ediff-current-diff-C        ((t (:foreground ,text-1 :background ,background-current-diff-C ))))
`(ediff-even-diff-A           ((t (:foreground ,text-1 :background ,background-ediff         ))))
`(ediff-even-diff-Ancestor    ((t (:foreground ,text-1 :background ,violet-2                  ))))
`(ediff-even-diff-B           ((t (:foreground ,text-1 :background ,background-ediff       ))))
`(ediff-even-diff-C           ((t (:foreground ,text-1 :background ,background-ediff       ))))
`(ediff-fine-diff-A           ((t (:foreground ,text-1 :background ,background-fine-diff-A    ))))
`(ediff-fine-diff-Ancestor    ((t (:foreground ,text-1 :background ,violet-2                  ))))
`(ediff-fine-diff-B           ((t (:foreground ,text-1 :background ,background-fine-diff-B    ))))
`(ediff-fine-diff-C           ((t (:foreground ,text-1 :background ,background-fine-diff-C    ))))
`(ediff-odd-diff-A            ((t (:foreground ,text-1 :background ,background-ediff        ))))
`(ediff-odd-diff-Ancestor     ((t (:foreground ,text-1 :background ,background-ediff        ))))
`(ediff-odd-diff-B            ((t (:foreground ,text-1 :background ,background-ediff        ))))
`(ediff-odd-diff-C            ((t (:foreground ,text-1 :background ,background-ediff        ))))

;org
`(org-agenda-calendar-event         ((t (:foreground ,text-1                                                                            ))))
`(org-agenda-calendar-sexp          ((t (:foreground ,text-1                                                                            ))))
`(org-agenda-clocking               ((t (:foreground ,green-1 :background ,green-2                                                    ))))
`(org-agenda-column-dateline        ((t (:foreground ,text-1                                                                            ))))
`(org-agenda-current-time           ((t (:foreground ,text-2  :background ,background-3                                       ))))
`(org-agenda-date                   ((t (:foreground ,text-2                                                                            ))))
`(org-agenda-date-today             ((t (:foreground ,text-2                              :bold t                                       ))))
`(org-agenda-date-weekend           ((t (:foreground ,text-1                                                                            ))))
`(org-agenda-diary                  ((t (:foreground ,text-1                                                                            ))))
`(org-agenda-dimmed-todo-face       ((t (:foreground ,text-1                                                                            ))))
`(org-agenda-done                   ((t (:foreground ,text-2  :background ,nil                                                                          ))))
`(org-agenda-filter-category        ((t (:foreground ,text-1                                                                            ))))
`(org-agenda-filter-effort          ((t (:foreground ,text-1                                                                            ))))
`(org-agenda-filter-regexp          ((t (:foreground ,text-1                                                                            ))))
`(org-agenda-filter-tags            ((t (:foreground ,text-1                                                                            ))))
`(org-agenda-restriction-lock       ((t (:foreground ,text-1                                                                            ))))
`(org-agenda-structure              ((t (:foreground ,text-1                                                                            ))))
`(org-archived                      ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-block                         ((t (:foreground ,text-1  :background ,nil          ))))
`(org-block-begin-line              ((t (:foreground ,text-2  :background ,nil          ))))
`(org-block-end-line                ((t (:foreground ,text-2  :background ,nil          ))))
`(org-checkbox                      ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-checkbox-statistics-done      ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-checkbox-statistics-todo      ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-clock-overlay                 ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-code                          ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-column                        ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-column-title                  ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-date                          ((t (:foreground ,blue-1   :background ,nil                           :underline t                                  ))))
`(org-date-selected                 ((t (:foreground ,yellow-1  :background ,yellow-2 ))))
`(org-default                       ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-document-info                 ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-document-info-keyword         ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-document-title                ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-done                          ((t (:foreground ,text-2                              :bold t                                       ))))
`(org-drawer                        ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-ellipsis                      ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-footnote                      ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-formula                       ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-headline-done                 ((t (:foreground ,text-2  :background ,background-1 ))))
`(org-headline-todo                 ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-hide                          ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-latex-and-related             ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-level-1                       ((t (:foreground ,green-1  :background ,nil :bold t))))
`(org-level-2                       ((t (:foreground ,red-1    :background ,nil :bold t))))
`(org-level-3                       ((t (:foreground ,blue-1   :background ,nil :bold t))))
`(org-level-4                       ((t (:foreground ,yellow-1 :background ,nil :bold t))))
`(org-level-5                       ((t (:foreground ,green-1  :background ,nil :bold t))))
`(org-level-6                       ((t (:foreground ,red-1    :background ,nil :bold t))))
`(org-level-7                       ((t (:foreground ,blue-1   :background ,nil :bold t))))
`(org-level-8                       ((t (:foreground ,yellow-1 :background ,nil :bold t))))
`(org-link                          ((t (:foreground ,blue-1  :background ,blue-2 :bold t :underline t))))
`(org-list-dt                       ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-macro                         ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-meta-line                     ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-mode-line-clock               ((t (:foreground ,text-1  :background ,background-2 ))))
`(org-mode-line-clock-overrun       ((t (:foreground ,red-2  :background ,red-1 ))))
`(org-priority                      ((t (:foreground ,yellow-1  :background ,yellow-2 ))))
`(org-property-value                ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-quote                         ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-scheduled                     ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-scheduled-previously          ((t (:foreground ,text-2  :background ,background-1 ))))
`(org-scheduled-today               ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-sexp-date                     ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-special-keyword               ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-table                         ((t (:foreground ,text-1  :background ,background-4 ))))
`(org-table-header                  ((t (:foreground ,green-1  :background ,green-2 ))))
`(org-tag                           ((t (:foreground ,text-2  :background ,background-1 ))))
`(org-tag-group                     ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-target                        ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-time-grid                     ((t (:foreground ,text-3  :background ,background-1 ))))
`(org-todo                          ((t (:foreground ,red-1   :background ,nil              :bold t                                       ))))
`(org-upcoming-deadline             ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-upcoming-distant-deadline     ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-verbatim                      ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-verse                         ((t (:foreground ,text-1  :background ,background-1 ))))
`(org-warning                       ((t (:foreground ,text-1  :background ,background-1 ))))

`(diff-added                       ((t (:foreground ,text-diff-added    :background ,background-diff-added ))))
`(diff-removed                     ((t (:foreground ,text-diff-removed  :background ,background-diff-removed ))))

;mode-line
`(mode-line                         ((t (:foreground ,text-1 :background ,background-mode-line-fringe))))
`(mode-line-inactive                ((t (:foreground ,text-2 :background ,background-mode-line-fringe))))
`(mode-line-buffer-id               ((t (:foreground ,text-buffer-id :background ,background-buffer-id :bold t :box (:line-width 3 :color ,text-buffer-id)))))

`(telephone-line-accent-active      ((t (:foreground ,text-1          :background ,background-mode-line-fringe))))
`(telephone-line-accent-inactive    ((t (:foreground ,text-2          :background ,background-mode-line-fringe))))
;`(telephone-line-error              ((t (:foreground ,violet-1       :background ,violet-2))))
;`(telephone-line-evil               ((t (:foreground ,violet-1       :background ,violet-2))))
`(telephone-line-evil-emacs         ((t (:foreground ,evil-emacs-1    :background ,evil-emacs-2))))
;`(telephone-line-evil-god           ((t (:foreground ,violet-1       :background ,violet-2))))
`(telephone-line-evil-insert        ((t (:foreground ,evil-insert-1   :background ,evil-insert-2))))
`(telephone-line-evil-motion        ((t (:foreground ,evil-motion-1   :background ,evil-motion-2))))
`(telephone-line-evil-normal        ((t (:foreground ,evil-normal-1   :background ,evil-normal-2))))
`(telephone-line-evil-operator      ((t (:foreground ,evil-operator-1 :background ,evil-operator-2))))
`(telephone-line-evil-replace       ((t (:foreground ,evil-replace-1  :background ,evil-replace-2))))
`(telephone-line-evil-visual        ((t (:foreground ,evil-visual-1   :background ,evil-visual-2))))
`(telephone-line-projectile         ((t (:foreground ,text-telephone-line-projectile         :background ,background-telephone-line-projectile :bold t :box (:line-width 3 :color ,text-telephone-line-projectile)))))
;`(telephone-line-unimportant        ((t (:foreground ,yellow-1))))
`(telephone-line-warning            ((t (:foreground ,text-2))))

`(evil-ex-lazy-highlight            ((t (:foreground ,text-match :background ,background-match))))
`(evil-ex-search                    ((t (:foreground ,text-match :background ,background-match))))
`(evil-ex-substitute-matches        ((t (:foreground ,text-match :background ,background-match))))
`(lazy-highlight                    ((t (:foreground ,text-match :background ,background-match))))
`(isearch                           ((t (:foreground ,text-match :background ,background-match))))

`(whitespace-big-indent       ((t (:foreground ,violet-1 :background ,violet-2))))
`(whitespace-empty            ((t (:foreground ,violet-1 :background ,violet-2))))
`(whitespace-hspace           ((t (:foreground ,violet-1 :background ,violet-2))))
`(whitespace-indentation      ((t (:foreground ,violet-1 :background ,violet-2))))
`(whitespace-line             ((t (:foreground ,violet-1 :background ,violet-2))))
`(whitespace-newline          ((t (:foreground ,violet-1 :background ,violet-2))))
`(whitespace-space            ((t (:foreground ,text-2   :background ,background-1))))
`(whitespace-space-after-tab  ((t (:foreground ,violet-1 :background ,violet-2))))
`(whitespace-space-before-tab ((t (:foreground ,violet-1 :background ,violet-2))))
`(whitespace-tab              ((t (:foreground ,violet-1 :background ,violet-2))))
`(whitespace-trailing         ((t (:foreground ,violet-1 :background ,violet-2))))

`(flycheck-error                            ((t (:foreground ,text-error :weight normal :italic nil :underline t))))
`(lsp-lsp-flycheck-warning-unnecessary-face ((t (:foreground ,text-error :weight normal :italic nil :underline t))))
`(flycheck-fringe-info                      ((t (:foreground ,green-1))))
`(flycheck-fringe-warning                   ((t (:foreground ,orange-1))))
`(flycheck-fringe-error                     ((t (:foreground ,red-1))))

`(ansi-color-bold                 ((t (:foreground ,text-match :background ,background-match :bold t))))

`(ivy-current-match               ((t (:foreground ,text-match :background ,background-match        ))))
`(ivy-highlight-face              ((t (:foreground ,text-match :background ,background-match        ))))
`(ivy-minibuffer-match-face-1     ((t (:foreground ,text-match :background ,background-match :bold t))))
`(ivy-minibuffer-match-face-2     ((t (:foreground ,text-match :background ,background-match :bold t))))
`(ivy-minibuffer-match-face-3     ((t (:foreground ,text-match :background ,background-match :bold t))))
`(ivy-minibuffer-match-face-4     ((t (:foreground ,text-match :background ,background-match :bold t))))

`(treemacs-root-face                    ((t (:foreground ,text-1 :background ,nil :bold t :underline t))))
`(treemacs-file-face                    ((t (:foreground ,text-1 :background ,nil))))
`(treemacs-directory-collapsed-face     ((t (:foreground ,yellow-1 :background ,nil :bold t))))
`(treemacs-directory-face               ((t (:foreground ,yellow-1 :background ,nil :bold t))))
`(treemacs-git-modified-face            ((t (:foreground ,blue-1 :background ,blue-2 :bold t))))
`(treemacs-git-ignored-face             ((t (:foreground ,text-2 :background ,nil :italic t))))
`(treemacs-git-untracked-face           ((t (:foreground ,red-1 :background ,nil :bold t :underline t :italic t))))
`(treemacs-fringe-indicator-face        ((t (:foreground ,background-mode-line-fringe :background ,background-mode-line-fringe :bold t :underline t :italic t))))
`(treemacs-git-renamed-face             ((t (:foreground ,orange-1 :background ,nil :bold t :underline t))))
`(treemacs-git-added-face               ((t (:foreground ,red-1 :background ,nil :bold t :underline t :italic t))))
`(treemacs-git-conflict-face            ((t (:foreground ,red-1 :background ,nil :bold t :underline t :italic t))))
;`(treemacs-git-unmodified-face          ((t (:foreground ,red-1 :background ,nil :bold t :underline t :italic t))))
`(treemacs-git-added-face               ((t (:foreground ,red-1 :background ,nil :bold t :underline t :italic t))))
)

;;;###autoload
(when load-file-name
     (add-to-list 'custom-theme-load-path
         (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'chiaroscuro)

;;; chiaroscuro-theme.el ends here
