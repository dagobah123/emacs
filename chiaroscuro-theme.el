;;; chiaroscuro-theme.el --- Theme consisting of multiple themes

;;; Commentary:

;;; Code:

(defvar text-1                      "")
(defvar text-2                      "")
(defvar text-3                      "")
(defvar text-hl                     "")
(defvar text-match                  "")
(defvar text-diff-added             "")
(defvar text-diff-removed           "")
(defvar background-1                "")
(defvar background-2                "")
(defvar background-3                "")
(defvar background-4                "")
(defvar background-5                "")
(defvar background-6                "")
(defvar background-7                "")
(defvar background-mode-line-fringe "")
(defvar background-match            "")
(defvar background-cursor           "")
(defvar background-diff-added       "")
(defvar background-diff-removed     "")
(defvar background-buffer-id        "#ffff00")
(defvar green-1                     "")
(defvar green-2                     "")
(defvar red-1                       "")
(defvar red-2                       "")
(defvar blue-1                      "")
(defvar blue-2                      "")
(defvar yellow-1                    "")
(defvar yellow-2                    "")
(defvar violet-1                    "")
(defvar violet-2                    "")
(defvar orange-1                    "")
(defvar orange-2                    "")
(defvar gray-1                      "")
(defvar gray-2                      "")
(defvar white-1                     "#ffffff")
(defvar line-number-1               "")
(defvar line-number-2               "")
(defvar line-number-3               "")
(defvar line-number-4               "")
(defvar evil-emacs-1                "#ffffff")
(defvar evil-emacs-2                "#bf3eff") ;violet
(defvar evil-normal-1               "#ffffff")
(defvar evil-normal-2               "#00cc00") ;green
(defvar evil-insert-1               "#ffffff")
(defvar evil-insert-2               "#dd0000") ;red
(defvar evil-replace-1              "#ffffff")
(defvar evil-replace-2              "#dd0000") ;red
(defvar evil-replace-1              "#ffffff")
(defvar evil-replace-2              "#ffa500") ;orange
(defvar evil-visual-1               "#ffffff")
(defvar evil-visual-2               "#ffb90f") ;yellow
(defvar evil-motion-1               "#ffffff")
(defvar evil-motion-2               "#4876ff") ;blue
(defvar evil-operator-1             "#ffffff")
(defvar evil-operator-2             "#4876ff") ;blue
(defvar error                       "#ff0000")

(load-file "~/.emacs.d/theme_karekare.el")
(load-file "~/.emacs.d/theme_white.el")
(load-file "~/.emacs.d/theme_gioconda.el")
(load-file "~/.emacs.d/theme_caravaggio.el")
(load-file "~/.emacs.d/theme_light.el")
(load-file "~/.emacs.d/theme_terminal.el")

(if (> CHIAROSCURO_INDEX 5)
    (progn
        (setq CHIAROSCURO_INDEX 0)
    )
)

(if (< CHIAROSCURO_INDEX 0)
    (progn
        (setq CHIAROSCURO_INDEX 5)
    )
)

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
`(hl-line                  ((t (:foreground ,text-hl  :background ,background-4                ))))
`(fringe                   ((t (:foreground ,text-1   :background ,background-mode-line-fringe ))))
`(minibuffer-prompt        ((t (:foreground ,text-1   :background ,background-1                ))))
`(ido-first-match          ((t (:foreground ,violet-1 :background ,violet-2 :bold t            ))))
`(ido-only-match           ((t (:foreground ,violet-1 :background ,violet-2 :bold t            ))))
`(lsp-face-highlight-read  ((t (:foreground ,violet-1 :background ,violet-2 :bold t            ))))
`(lsp-face-highlight-write ((t (:foreground ,violet-1 :background ,violet-2 :bold t            ))))
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
`(font-lock-comment-delimiter-face    ((t (:foreground ,text-1                                          ))))
`(font-lock-comment-face              ((t (:foreground ,text-2                                          ))))
`(font-lock-constant-face             ((t (:foreground ,orange-1                                        ))))
`(font-lock-doc-face                  ((t (:foreground ,text-2                                          ))))
`(font-lock-function-name-face        ((t (:foreground ,green-1  :background ,green-2      :bold t      ))))
`(font-lock-keyword-face              ((t (:foreground ,yellow-1 :background ,yellow-2     :bold t      ))))
`(font-lock-negation-char-face        ((t (:foreground ,text-1                                          ))))
`(font-lock-preprocessor-face         ((t (:foreground ,violet-1                                        ))))
`(font-lock-regexp-grouping-backslash ((t (:foreground ,text-1                                          ))))
`(font-lock-regexp-grouping-construct ((t (:foreground ,text-1                                          ))))
`(font-lock-string-face               ((t (:foreground ,text-2                                          ))))
`(font-lock-type-face                 ((t (:foreground ,red-1    :bold t :underline t      :italic t    ))))
`(font-lock-variable-name-face        ((t (:foreground ,blue-1   :background ,blue-2       :bold t      ))))
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
`(helm-swoop-target-word-face       ((t (:foreground ,violet-1   :background ,violet-2 :bold t          ))))
`(helm-swoop-line-number-face       ((t (:foreground ,text-1     :background ,background-1 :weight bold ))))
`(helm-swoop-target-line-block-face ((t (:foreground ,text-1     :background ,background-1              ))))
`(helm-ff-rsync-progress            ((t (:foreground ,text-1                                            ))))
`(helm-ff-rsync-progress            ((t (:foreground ,text-1                                            ))))
`(helm-buffer-saved-out             ((t (:foreground ,text-1                                            ))))
`(helm-ff-prefix                    ((t (:foreground ,yellow-1   :background ,yellow-2                  ))))
`(helm-buffer-directory             ((t (:foreground ,yellow-1   :background ,yellow-2                  ))))
`(helm-ff-directory                 ((t (:foreground ,yellow-1   :background ,yellow-2                  ))))
`(helm-ff-dotted-directory          ((t (:foreground ,yellow-1   :background ,yellow-2                  ))))
`(helm-ff-file-extension            ((t (:foreground ,green-1    :background ,green-2                   ))))
`(helm-grep-file                    ((t (:foreground ,text-1     :background ,nil :bold t :underline t  ))))
`(helm-grep-finish                  ((t (:foreground ,violet-1   :background ,violet-2                  ))))
`(helm-grep-lineno                  ((t (:foreground ,text-2                                            ))))
`(helm-grep-match                   ((t (:foreground ,text-match :background ,background-match          ))))
`(markdown-highlighting-face        ((t (:foreground ,green-1    :background ,green-2                   ))))
`(helm-header-line-left-margin      ((t (:foreground ,green-1    :background ,green-2                   ))))
`(cua-global-mark                   ((t (:foreground ,green-1    :background ,green-2                   ))))
`(helm-match-item                   ((t (:foreground ,violet-1   :background ,violet-2 :weight bold     ))))
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
`(magit-branch-current              ((t (:foreground ,green-1           :background ,green-2      :bold t :box (:line-width 3 :color ,green-1) ))))
`(magit-branch-local                ((t (:foreground ,green-1           :background ,green-2      :bold t :box (:line-width 3 :color ,green-1) ))))
`(magit-branch-remote               ((t (:foreground ,green-1           :background ,red-2        :bold t :box (:line-width 3 :color ,green-1) ))))
`(magit-branch-remote-head          ((t (:foreground ,green-1           :background ,red-2        :bold t :box (:line-width 3 :color ,green-1) ))))
`(magit-branch-upstream             ((t (:foreground ,green-1           :background ,red-2        :bold t :box (:line-width 3 :color ,green-1) ))))
`(magit-section-highlight           ((t (                               :background ,background-7 :bold t                                      ))))
`(magit-log-author                  ((t (:foreground ,text-2                                                                                   ))))
`(magit-log-date                    ((t (:foreground ,text-2                                                                                   ))))
`(magit-keyword-squash              ((t (:foreground ,text-1                                                                                   ))))

`(magit-diff-context                ((t (:foreground ,gray-1            :background ,nil                                                       ))))
`(magit-diff-context-highlight      ((t (:foreground ,gray-1            :background ,background-7                                              ))))
                                                                         
`(magit-diff-hunk-region            ((t (:foreground ,text-1            :background ,nil                                                       ))))
`(magit-diff-conflict-heading       ((t (:foreground ,text-1            :background ,nil                                                       ))))
                                                                         
`(magit-diff-file-heading           ((t (:foreground ,gray-1            :background ,nil :bold t                                               ))))
`(magit-diff-file-heading-selection ((t (:foreground ,violet-1          :background ,nil :bold t                                               ))))
`(magit-diff-file-heading-highlight ((t (:foreground ,violet-1          :background ,nil :bold t                                               ))))
                                                                         
`(magit-diff-hunk-heading           ((t (:foreground ,gray-1            :background ,violet-2                                                  ))))
`(magit-diff-hunk-heading-selection ((t (:foreground ,violet-1          :background ,violet-2                                                  ))))
`(magit-diff-hunk-heading-highlight ((t (:foreground ,violet-1          :background ,violet-2                                                  ))))
                                                                         
`(magit-diff-whitespace-warning     ((t (:foreground ,text-1            :background ,error                                                     ))))

`(magit-diff-added-highlight        ((t (:foreground ,text-diff-added   :background ,background-diff-added                                     ))))
`(magit-diff-removed-highlight      ((t (:foreground ,text-diff-removed :background ,background-diff-removed                                   ))))

`(magit-diff-added                  ((t (:foreground ,text-diff-added   :background ,nil                                                       ))))
`(magit-diff-removed                ((t (:foreground ,text-diff-removed :background ,nil                                                       ))))

`(magit-blame-heading               ((t (:foreground ,text-1            :background ,background-6 :bold t                                      ))))
`(magit-blame-highlight             ((t (:foreground ,text-1            :background ,background-6 :bold t                                      ))))
`(magit-blame-margin                ((t (:foreground ,text-1            :background ,background-6 :bold t                                      ))))

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
`(org-block                         ((t (:foreground ,text-1  :background ,background-2 ))))
`(org-block-begin-line              ((t (:foreground ,text-2  :background ,background-2                                               ))))
`(org-block-end-line                ((t (:foreground ,text-2  :background ,background-2                                               ))))
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
`(mode-line-buffer-id               ((t (:foreground ,text-hl :background ,background-buffer-id :bold t :box (:line-width 3 :color ,text-hl)))))

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
`(telephone-line-projectile         ((t (:foreground ,text-hl :background ,background-5 :bold t :box (:line-width 3 :color ,text-hl)))))
;`(telephone-line-unimportant        ((t (:foreground ,yellow-1))))
`(telephone-line-warning            ((t (:foreground ,text-2))))

;`(evil-ex-commands                  ((t (:foreground ,text-1 :background ,background-1))))
;`(evil-ex-info                      ((t (:foreground ,text-1 :background ,background-1))))
`(evil-ex-lazy-highlight            ((t (:foreground ,violet-1 :background ,violet-2))))
`(evil-ex-search                    ((t (:foreground ,violet-1 :background ,violet-2))))
`(evil-ex-substitute-matches        ((t (:foreground ,violet-1 :background ,violet-2))))
`(lazy-highlight                    ((t (:foreground ,violet-1 :background ,violet-2))))
`(isearch                           ((t (:foreground ,violet-1 :background ,violet-2))))
;`(query-replace        ((t (:foreground ,violet-1 :background ,violet-2))))
;`(evil-ex-substitute-replacement    ((t (:foreground ,text-1 :background ,background-1))))

`(doom-modeline-bar                 ((t (:foreground ,text-1                            ))))
`(doom-modeline-bar-inactive        ((t (:foreground ,text-1                            ))))
`(doom-modeline-battery-charging    ((t (:foreground ,text-1                            ))))
`(doom-modeline-battery-critical    ((t (:foreground ,text-1                            ))))
`(doom-modeline-battery-error       ((t (:foreground ,text-1                            ))))
`(doom-modeline-battery-full        ((t (:foreground ,text-1                            ))))
`(doom-modeline-battery-normal      ((t (:foreground ,text-1                            ))))
`(doom-modeline-battery-warning     ((t (:foreground ,text-1                            ))))
`(doom-modeline-buffer-file         ((t (:foreground ,text-1                            ))))
`(doom-modeline-buffer-major-mode   ((t (:foreground ,text-1                            ))))
`(doom-modeline-buffer-minor-mode   ((t (:foreground ,text-1                            ))))
`(doom-modeline-buffer-modified     ((t (:foreground ,text-1                            ))))
`(doom-modeline-buffer-path         ((t (:foreground ,text-1                            ))))
`(doom-modeline-buffer-timemachine  ((t (:foreground ,text-1                            ))))
`(doom-modeline-debug               ((t (:foreground ,text-1                            ))))
`(doom-modeline-debug-visual        ((t (:foreground ,text-1                            ))))
`(doom-modeline-evil-emacs-state    ((t (:foreground ,text-1                            ))))
`(doom-modeline-evil-insert-state   ((t (:foreground ,text-1                            ))))
`(doom-modeline-evil-motion-state   ((t (:foreground ,text-1                            ))))
`(doom-modeline-evil-normal-state   ((t (:foreground ,text-1                            ))))
`(doom-modeline-evil-operator-state ((t (:foreground ,text-1                            ))))
`(doom-modeline-evil-replace-state  ((t (:foreground ,text-1                            ))))
`(doom-modeline-evil-visual-state   ((t (:foreground ,text-1                            ))))
`(doom-modeline-highlight           ((t (:foreground ,text-1                            ))))
`(doom-modeline-host                ((t (:foreground ,text-1                            ))))
`(doom-modeline-info                ((t (:foreground ,text-1                            ))))
`(doom-modeline-input-method        ((t (:foreground ,text-1                            ))))
`(doom-modeline-input-method-alt    ((t (:foreground ,text-1                            ))))
`(doom-modeline-lsp-error           ((t (:foreground ,text-1                            ))))
`(doom-modeline-lsp-running         ((t (:foreground ,text-1                            ))))
`(doom-modeline-lsp-success         ((t (:foreground ,text-1                            ))))
`(doom-modeline-lsp-warning         ((t (:foreground ,text-1                            ))))
`(doom-modeline-notification        ((t (:foreground ,text-1                            ))))
`(doom-modeline-panel               ((t (:foreground ,text-1                            ))))
`(doom-modeline-urgent              ((t (:foreground ,text-1                            ))))
`(doom-modeline-vspc-face           ((t (:foreground ,text-1                            ))))
`(doom-modeline-warning             ((t (:foreground ,text-1                            ))))

`(all-the-icons-blue       ((t (:foreground ,text-1))))
`(all-the-icons-blue-alt   ((t (:foreground ,text-1))))
`(all-the-icons-cyan       ((t (:foreground ,text-1))))
`(all-the-icons-cyan-alt   ((t (:foreground ,text-1))))
`(all-the-icons-dblue      ((t (:foreground ,text-1))))
`(all-the-icons-dcyan      ((t (:foreground ,text-1))))
`(all-the-icons-dgreen     ((t (:foreground ,text-1))))
`(all-the-icons-dmaroon    ((t (:foreground ,text-1))))
`(all-the-icons-dorange    ((t (:foreground ,text-1))))
`(all-the-icons-dpink      ((t (:foreground ,text-1))))
`(all-the-icons-dpurple    ((t (:foreground ,text-1))))
`(all-the-icons-dred       ((t (:foreground ,text-1))))
`(all-the-icons-dsilver    ((t (:foreground ,text-1))))
`(all-the-icons-dyellow    ((t (:foreground ,text-1))))
`(all-the-icons-green      ((t (:foreground ,text-1))))
`(all-the-icons-lblue      ((t (:foreground ,text-1))))
`(all-the-icons-lcyan      ((t (:foreground ,text-1))))
`(all-the-icons-lgreen     ((t (:foreground ,text-1))))
`(all-the-icons-lmaroon    ((t (:foreground ,text-1))))
`(all-the-icons-lorange    ((t (:foreground ,text-1))))
`(all-the-icons-lpink      ((t (:foreground ,text-1))))
`(all-the-icons-lpurple    ((t (:foreground ,text-1))))
`(all-the-icons-lred       ((t (:foreground ,text-1))))
`(all-the-icons-lsilver    ((t (:foreground ,text-1))))
`(all-the-icons-lyellow    ((t (:foreground ,text-1))))
`(all-the-icons-maroon     ((t (:foreground ,text-1))))
`(all-the-icons-orange     ((t (:foreground ,text-1))))
`(all-the-icons-pink       ((t (:foreground ,text-1))))
`(all-the-icons-purple     ((t (:foreground ,text-1))))
`(all-the-icons-purple-alt ((t (:foreground ,text-1))))
`(all-the-icons-red        ((t (:foreground ,text-1))))
`(all-the-icons-red-alt    ((t (:foreground ,text-1))))
`(all-the-icons-silver     ((t (:foreground ,text-1))))
`(all-the-icons-yellow     ((t (:foreground ,text-1))))

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

`(dashboard-banner-logo-title  ((t (:foreground ,text-1 :background ,background-1))))
`(dashboard-footer             ((t (:foreground ,text-1 :background ,background-1))))
`(dashboard-heading            ((t (:foreground ,text-1 :background ,background-1 :bold t))))
`(dashboard-items-face         ((t (:foreground ,text-1 :background ,background-1 :bold t))))
`(dashboard-navigator          ((t (:foreground ,text-1 :background ,background-1))))
`(dashboard-no-items-face      ((t (:foreground ,text-1 :background ,background-1))))
`(dashboard-text-banner        ((t (:foreground ,text-1 :background ,background-1))))

`(flycheck-error                            ((t (:foreground ,error :bold t :italic t))))
`(lsp-lsp-flycheck-warning-unnecessary-face ((t (:foreground ,error :bold t :italic t))))
`(flycheck-fringe-info                      ((t (:foreground ,error))))
`(flycheck-fringe-warning                   ((t (:foreground ,error))))
`(flycheck-fringe-error                     ((t (:foreground ,error))))

`(ansi-color-bold                 ((t (:foreground ,violet-1 :background ,violet-2 :bold t))))

`(ivy-current-match               ((t (:foreground ,violet-1 :background ,violet-2      ))))
`(ivy-highlight-face              ((t (:foreground ,violet-1 :background ,violet-2      ))))
`(ivy-minibuffer-match-face-1     ((t (:foreground ,violet-1 :background ,violet-2 :bold))))
`(ivy-minibuffer-match-face-2     ((t (:foreground ,violet-1 :background ,violet-2 :bold))))
`(ivy-minibuffer-match-face-3     ((t (:foreground ,violet-1 :background ,violet-2 :bold))))
`(ivy-minibuffer-match-face-4     ((t (:foreground ,violet-1 :background ,violet-2 :bold))))

`(error                 ((t (:foreground ,red-1                              :bold t :underline t :italic t))))
)

;;;###autoload
(when load-file-name
     (add-to-list 'custom-theme-load-path
         (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'chiaroscuro)

;;; chiaroscuro-theme.el ends here
