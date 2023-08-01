;;; chiaroscuro-theme.el --- Theme consisting of multiple themes
;;; Commentary:
;;; Code:

(load-file "~/.emacs.d/theme_variables.el")

(if (> INDEX-CHIAROSCURO INDEX-CONSOLE)

  (progn

    (if (eq INDEX-CHIAROSCURO INDEX-ECLIPSE) (progn (load-file "~/.emacs.d/theme_default_light.el")))
    (if (eq INDEX-CHIAROSCURO INDEX-ECLIPSE) (progn (load-file "~/.emacs.d/theme_eclipse.el")))

    (if (eq INDEX-CHIAROSCURO INDEX-NEON) (progn (load-file "~/.emacs.d/theme_default_dark.el")))
    (if (eq INDEX-CHIAROSCURO INDEX-NEON) (progn (load-file "~/.emacs.d/theme_neon.el")))

;    (if (eq INDEX-CHIAROSCURO INDEX-TERMINAL) (progn (load-file "~/.emacs.d/theme_default_dark.el")))
;    (if (eq INDEX-CHIAROSCURO INDEX-TERMINAL) (progn (load-file "~/.emacs.d/theme_terminal.el")))
; 
;    (if (eq INDEX-CHIAROSCURO INDEX-DUNE) (progn (load-file "~/.emacs.d/theme_default_middle.el")))
;    (if (eq INDEX-CHIAROSCURO INDEX-DUNE) (progn (load-file "~/.emacs.d/theme_dune.el")))
; 
;    (if (eq INDEX-CHIAROSCURO INDEX-NIGHT) (progn (load-file "~/.emacs.d/theme_default_dark.el")))
;    (if (eq INDEX-CHIAROSCURO INDEX-NIGHT) (progn (load-file "~/.emacs.d/theme_night.el")))
; 
;    (if (eq INDEX-CHIAROSCURO INDEX-BLUE) (progn (load-file "~/.emacs.d/theme_default_dark.el")))
;    (if (eq INDEX-CHIAROSCURO INDEX-BLUE) (progn (load-file "~/.emacs.d/theme_blue.el")))

    (if (eq INDEX-CHIAROSCURO INDEX-YELLOW) (progn (load-file "~/.emacs.d/theme_default_light_middle.el")))
    (if (eq INDEX-CHIAROSCURO INDEX-YELLOW) (progn (load-file "~/.emacs.d/theme_yellow.el")))

;    (if (eq INDEX-CHIAROSCURO INDEX-LIGHT) (progn (load-file "~/.emacs.d/theme_default_light.el")))
;    (if (eq INDEX-CHIAROSCURO INDEX-LIGHT) (progn (load-file "~/.emacs.d/theme_light.el")))
; 
;    (if (eq INDEX-CHIAROSCURO INDEX-LINUX) (progn (load-file "~/.emacs.d/theme_default_dark.el")))
;    (if (eq INDEX-CHIAROSCURO INDEX-LINUX) (progn (load-file "~/.emacs.d/theme_linux.el")))
; 
;    (if (eq INDEX-CHIAROSCURO INDEX-CARAVAGGIO) (progn (load-file "~/.emacs.d/theme_default_dark.el")))
;    (if (eq INDEX-CHIAROSCURO INDEX-CARAVAGGIO) (progn (load-file "~/.emacs.d/theme_caravaggio.el")))

    (if (eq INDEX-CHIAROSCURO INDEX-RED) (progn (load-file "~/.emacs.d/theme_default_dark.el")))
    (if (eq INDEX-CHIAROSCURO INDEX-RED) (progn (load-file "~/.emacs.d/theme_red.el")))

    (if (> INDEX-CHIAROSCURO number-of-themes) (progn (setq INDEX-CHIAROSCURO 0)))
    (if (< INDEX-CHIAROSCURO 0) (progn (setq INDEX-CHIAROSCURO number-of-themes)))

    (deftheme chiaroscuro)

    (custom-theme-set-faces 'chiaroscuro

    ;base
    `(default                  ((t (:foreground ,text-normal       :background ,background              ))))
    `(cursor                   ((t (:background ,background-cursor                                        ))))
    `(link                     ((t (:foreground ,text-normal                                 :underline t ))))
    `(highlight                ((t (:foreground ,text-match        :background ,background-match          ))))
    `(lazy-highlight           ((t (:foreground ,text-match        :background ,background-match          ))))

    `(show-paren-match         ((t (:foreground unspecified       :background ,background-region          ))))
    `(region                   ((t (:foreground unspecified       :background ,background-region          ))))
    `(cua-rectangle            ((t (:foreground unspecified       :background ,background-region          ))))

    `(hl-line                  ((t (:foreground unspecified        :background ,background-hl             ))))
    `(fringe                   ((t (:foreground ,text-normal       :background ,background-fringe         ))))
    `(minibuffer-prompt        ((t (:foreground ,text-normal       :background ,background              ))))
    `(ido-first-match          ((t (:foreground ,text-match          :background ,background-match    :bold t ))))
    `(ido-only-match           ((t (:foreground ,text-match          :background ,background-match    :bold t ))))
    `(lsp-face-highlight-read  ((t (:foreground ,text-match        :background ,background-match  :bold t ))))
    `(lsp-face-highlight-write ((t (:foreground ,text-match        :background ,background-match  :bold t ))))
    `(eshell-prompt            ((t (:foreground ,text-match    :background ,background      :bold t ))))
    `(comint-highlight-prompt  ((t (:foreground ,text-match    :background ,background      :bold t ))))
    `(secondary-selection      ((t (:foreground ,color-blue-1      :background ,color-blue-2      :bold t ))))
    `(git-commit-summary       ((t (:foreground ,color-blue-1      :background ,color-blue-2              ))))

    ;line number
    `(line-number-current-line ((t (:foreground ,line-number-1 :background ,line-number-2 :bold t ))))
    `(line-number              ((t (:foreground ,line-number-3 :background ,line-number-4         ))))
    `(line-number-major-tick   ((t (:foreground ,line-number-3 :background ,line-number-4         ))))
    `(line-number-minor-tick   ((t (:foreground ,line-number-3 :background ,line-number-4         ))))

    ;font-lock
    `(font-lock-builtin-face           ((t (:foreground ,text-normal           ))))
    `(font-lock-comment-delimiter-face ((t (:foreground ,text-low              ))))
    `(font-lock-comment-face           ((t (:foreground ,text-low              ))))
    `(font-lock-constant-face          ((t (:foreground ,text-constant :bold t ))))
    `(font-lock-doc-face               ((t (:foreground ,text-low              ))))

;sd;flksdf;l

    (if (eq INDEX-CHIAROSCURO INDEX-LIGHT)
      (progn `(font-lock-function-name-face ((t (:foreground ,text-function :background ,font-lock-green :bold t )))))
      (progn `(font-lock-function-name-face ((t (:foreground ,text-function :bold t                              ))))))

    (if (eq INDEX-CHIAROSCURO INDEX-LIGHT)
      (progn `(font-lock-variable-name-face ((t (:foreground ,text-variable :background ,font-lock-blue :bold t )))))
      (progn `(font-lock-variable-name-face ((t (:foreground ,text-variable :bold t                             ))))))

    (if (eq INDEX-CHIAROSCURO INDEX-LIGHT)
      (progn `(font-lock-type-face ((t (:foreground ,text-type :background ,font-lock-red)))))
      (progn `(font-lock-type-face ((t (:foreground ,text-type :bold t))))))

    `(font-lock-keyword-face              ((t (:foreground ,text-keyword      ))))
    `(font-lock-negation-char-face        ((t (:foreground ,text-normal       ))))
    `(font-lock-preprocessor-face         ((t (:foreground ,text-preprocessor ))))
    `(font-lock-regexp-grouping-backslash ((t (:foreground ,text-normal       ))))
    `(font-lock-regexp-grouping-construct ((t (:foreground ,text-normal       ))))
    `(font-lock-string-face               ((t (:foreground ,text-low          ))))
    `(font-lock-warning-face              ((t (:foreground ,text-warning      ))))

    ;dired
    `(dired-directory    ((t (:foreground ,text-match :background, background-match :bold t ))))
    `(dired-flagged      ((t (:foreground ,color-red-1    :background, color-red-2            ))))
    `(dired-header       ((t (:foreground ,text-normal    :background, background           ))))
    `(dired-ignored      ((t (:foreground ,text-normal    :background, background           ))))
    `(dired-mark         ((t (:foreground ,color-red-1    :background, color-red-2            ))))
    `(dired-marked       ((t (:foreground ,color-red-1    :background, color-red-2            ))))
    `(dired-narrow-blink ((t (:foreground ,text-normal    :background, background           ))))
    `(dired-perm-write   ((t (:foreground ,text-normal    :background, background           ))))
    `(dired-set-id       ((t (:foreground ,text-normal    :background, background           ))))
    `(dired-symlink      ((t (:foreground ,text-normal    :background, background           ))))
    `(dired-warning      ((t (:foreground ,text-normal    :background, background           ))))
    `(dired-special      ((t (:foreground ,text-match                                     ))))

    `(xref-file-header   ((t (:foreground ,line-number-3                               ))))
    `(xref-line-number   ((t (:foreground ,line-number-1                               ))))
    `(xref-match         ((t (:foreground ,text-match    :background ,background-match ))))
    `(match              ((t (:foreground ,text-match    :background ,background-match ))))

    ;helm
    `(helm-minibuffer-prompt            ((t (:foreground ,text-normal    :background ,background                          ))))
    `(helm-match                        ((t (:foreground ,text-normal                                                       ))))
    `(helm-candidate-number             ((t (:foreground ,text-normal                                                       ))))
    `(helm-M-x-key                      ((t (:foreground ,text-normal                                  :underline t         ))))
    ;`(helm-source-header                ((t (:foreground ,text-low                                     :bold t              ))))
    `(helm-selection                    ((t (:foreground ,text-match     :background ,background-match                      ))))
    `(helm-swoop-target-line-face       ((t (:foreground ,text-match     :background ,background-match                      ))))
    `(helm-swoop-target-word-face       ((t (:foreground ,text-match     :background ,background-match :bold t              ))))
    `(helm-swoop-line-number-face       ((t (:foreground ,text-normal    :background ,background                          ))))
    `(helm-swoop-target-line-block-face ((t (:foreground ,text-normal    :background ,background                          ))))
    `(helm-ff-rsync-progress            ((t (:foreground ,text-normal                                                       ))))
    `(helm-ff-rsync-progress            ((t (:foreground ,text-normal                                                       ))))
    `(helm-buffer-saved-out             ((t (:foreground ,text-normal                                                       ))))
    `(helm-ff-prefix                    ((t (:foreground ,text-match     :background ,background-match                      ))))
    `(helm-buffer-directory             ((t (:foreground ,text-match     :background ,background-match                      ))))
    `(helm-ff-directory                 ((t (:foreground ,text-match     :background ,background-match                      ))))
    `(helm-ff-dotted-directory          ((t (:foreground ,text-match     :background ,background-match                      ))))
    `(helm-ff-file-extension            ((t (:foreground ,color-green-1  :background ,color-green-2                         ))))
    `(helm-grep-file                    ((t (:foreground ,text-normal    :background unspecified       :bold t :underline t ))))
    `(helm-grep-finish                  ((t (:foreground ,text-match     :background ,background-match                      ))))
    `(helm-grep-lineno                  ((t (:foreground ,text-low                                                          ))))
    `(helm-grep-match                   ((t (:foreground ,text-match     :background ,background-match                      ))))
    `(markdown-highlighting-face        ((t (:foreground ,color-green-1  :background ,color-green-2                         ))))
    `(helm-header-line-left-margin      ((t (:foreground ,color-green-1  :background ,color-green-2                         ))))
    `(cua-global-mark                   ((t (:foreground ,color-green-1  :background ,color-green-2                         ))))
    `(helm-match-item                   ((t (:foreground ,text-match     :background ,background-match :bold t              ))))
    `(helm-separator                    ((t (:foreground ,color-yellow-1 :background ,color-yellow-2                        ))))
    `(helm-lisp-completion-info         ((t (:foreground ,color-yellow-1 :background ,color-yellow-2                        ))))
    `(ivy-match-required-face           ((t (:foreground ,text-match     :background ,background-match                      ))))
    `(transient-red                     ((t (:foreground ,color-yellow-1 :background ,color-yellow-2                        ))))
    `(info-menu-star                    ((t (:foreground ,color-yellow-1 :background ,color-yellow-2                        ))))
    `(helm-ff-denied                    ((t (:foreground ,color-yellow-1 :background ,color-yellow-2                        ))))
    `(helm-bookmark-file                ((t (:foreground ,color-yellow-1                                                    ))))
    `(helm-bookmark-directory           ((t (:foreground ,text-match :background, background-match   :bold t              ))))
    `(helm-bookmark-info                ((t (:foreground ,color-blue-1   :background ,color-blue-2                          ))))

    `(compilation-error                 ((t (:foreground ,text-error :bold t :underline t ))))
    `(compilation-info                  ((t (:foreground ,text-error :bold t :underline t ))))
    `(helm-lsp-diag-error               ((t (:foreground ,text-error :bold t :underline t ))))
    `(helm-lsp-diag-info                ((t (:foreground ,text-error :bold t :underline t ))))

    ;ido
    `(ido-subdir ((t (:foreground ,text-normal ))))

    ;elfeed
    `(elfeed-log-date-face            ((t (:foreground ,text-normal :background ,background ))))
    `(elfeed-log-debug-level-face     ((t (:foreground ,text-normal :background ,background ))))
    `(elfeed-log-error-level-face     ((t (:foreground ,text-normal :background ,background ))))
    `(elfeed-log-info-level-face      ((t (:foreground ,text-normal :background ,background ))))
    `(elfeed-log-warn-level-face      ((t (:foreground ,text-normal :background ,background ))))
    `(elfeed-search-date-face         ((t (:foreground ,text-normal :background ,background ))))
    `(elfeed-search-feed-face         ((t (:foreground ,text-normal :background ,background ))))
    `(elfeed-search-filter-face       ((t (:foreground ,text-normal :background ,background ))))
    `(elfeed-search-last-update-face  ((t (:foreground ,text-normal :background ,background ))))
    `(elfeed-search-tag-face          ((t (:foreground ,text-normal :background ,background ))))
    `(elfeed-search-title-face        ((t (:foreground ,text-normal :background ,background ))))
    `(elfeed-search-unread-count-face ((t (:foreground ,text-normal :background ,background ))))
    `(elfeed-search-unread-title-face ((t (:foreground ,text-normal :background ,background ))))
    `(message-header-cc               ((t (:foreground ,text-normal                           ))))
    `(message-header-name             ((t (:foreground ,text-normal                           ))))
    `(message-header-newsgroups       ((t (:foreground ,text-normal                           ))))
    `(message-header-other            ((t (:foreground ,text-normal                           ))))
    `(message-header-subject          ((t (:foreground ,text-normal                           ))))
    `(message-header-to               ((t (:foreground ,text-normal                           ))))
    `(header-line                     ((t (:foreground ,text-normal                           ))))

    ;magit
    `(magit-hash                        ((t (:foreground ,text-low                                                                                                    ))))
    `(magit-header-line                 ((t (:foreground ,text-low                                                      :bold t                                    ))))
    `(magit-section-heading             ((t (:foreground ,text-low                                                         :bold t                                    ))))
    `(magit-branch-current              ((t (:foreground ,color-yellow-1    :background ,color-yellow-2                    :box (:line-width 1 :color ,color-yellow-1)    ))))
    `(magit-branch-local                ((t (:foreground ,color-green-1     :background ,color-green-2                     :box (:line-width 1 :color ,color-green-1) ))))
    `(magit-branch-remote               ((t (:foreground ,color-red-1       :background ,color-red-2                       :box (:line-width 1 :color ,color-red-1)   ))))
    `(magit-branch-remote-head          ((t (:foreground ,color-red-1       :background ,color-red-2                       :box (:line-width 1 :color ,color-red-1)  :bold t :italic t ))))
    `(magit-branch-upstream             ((t (:foreground ,color-blue-1      :background ,color-blue-2                       :box (:line-width 1 :color ,color-blue-1)   ))))
    `(magit-section-highlight           ((t (:foreground unspecified        :background unspecified                        :bold t                                    ))))
    `(magit-log-author                  ((t (:foreground ,text-low                                                                                                    ))))
    `(magit-log-date                    ((t (:foreground ,text-low                                                                                                    ))))
    `(magit-keyword-squash              ((t (:foreground ,text-normal                                                                                                 ))))

    `(magit-diff-context                ((t (:foreground ,text-lower        :background unspecified                                                                   ))))
    `(magit-diff-context-highlight      ((t (:foreground ,text-normal       :background ,background-magit-dark                                                        ))))

    `(magit-diff-hunk-region            ((t (:foreground ,text-normal       :background ,background-magit                                                             ))))
    `(magit-diff-conflict-heading       ((t (:foreground ,text-normal       :background ,background-magit                                                             ))))

    `(magit-diff-file-heading           ((t (:foreground ,text-lower        :background ,background-magit                        :bold t                                    ))))
    `(magit-diff-file-heading-selection ((t (:foreground ,text-highlight-2  :background ,background-magit                  :bold t                                    ))))
    `(magit-diff-file-heading-highlight ((t (:foreground ,text-highlight-2  :background ,background-magit                  :bold t                                    ))))

    `(magit-diff-hunk-heading           ((t (:foreground ,text-low          :background ,background-magit                                                             ))))
    `(magit-diff-hunk-heading-selection ((t (:foreground ,text-highlight-2  :background ,background-magit                                                             ))))
    `(magit-diff-hunk-heading-highlight ((t (:foreground ,text-highlight-2  :background ,background-magit                                                             ))))
    `(diff-header                       ((t (:foreground ,text-highlight-2  :background ,background-magit                                                             ))))
    `(diff-file-header                  ((t (:foreground ,text-highlight-1  :background ,background-magit                  :bold t                                    ))))

    `(magit-diff-whitespace-warning     ((t (:foreground ,text-normal       :background ,text-error                                                                   ))))

    `(magit-diff-added-highlight        ((t (:foreground ,text-diff-added-highlight   :background ,background-diff-added-highlight                                              ))))
    `(magit-diff-removed-highlight      ((t (:foreground ,text-diff-removed-highlight :background ,background-diff-removed-highlight                                            ))))

    `(magit-diff-added                  ((t (:foreground ,text-diff-added   :background ,background-diff-added                                                        ))))
    `(magit-diff-removed                ((t (:foreground ,text-diff-removed :background ,background-diff-removed                                                      ))))

    `(magit-blame-heading               ((t (:foreground ,text-low          :background ,background-fringe                                                            ))))
    `(magit-blame-highlight             ((t (:foreground ,text-low          :background ,background-fringe                                                            ))))
    `(magit-blame-margin                ((t (:foreground ,text-low          :background ,background-fringe                                                            ))))

    `(magit-reflog-amend                ((t (:foreground ,text-normal                                                                                                 ))))
    `(magit-reflog-checkout             ((t (:foreground ,text-normal                                                                                                 ))))
    `(magit-reflog-cherry-pick          ((t (:foreground ,text-normal                                                                                                 ))))
    `(magit-reflog-commit               ((t (:foreground ,text-normal                                                                                                 ))))
    `(magit-reflog-merge                ((t (:foreground ,text-normal                                                                                                 ))))
    `(magit-reflog-other                ((t (:foreground ,text-normal                                                                                                 ))))
    `(magit-reflog-rebase               ((t (:foreground ,text-normal                                                                                                 ))))
    `(magit-reflog-remote               ((t (:foreground ,text-normal                                                                                                 ))))
    `(magit-reflog-reset                ((t (:foreground ,text-normal                                                                                                 ))))

    `(git-gutter:added                  ((t (:foreground ,color-green-1     :background ,color-green-2                     :bold t                                    ))))
    `(git-gutter:deleted                ((t (:foreground ,color-red-1       :background ,color-red-2                       :bold t                                    ))))
    `(git-gutter:modified               ((t (:foreground ,color-green-1     :background ,color-green-2                     :bold t                                    ))))
    `(git-gutter:separator              ((t (:foreground ,text-match    :background ,background-match                    :bold t                                    ))))
    `(git-gutter:unchanged              ((t (:foreground ,color-blue-1      :background ,color-blue-2                      :bold t                                    ))))

    `(smerge-upper                      ((t (:foreground ,text-ediff        :background ,background-diff-current-A                                                    ))))
    `(smerge-lower                      ((t (:foreground ,text-ediff        :background ,background-diff-current-B                                                    ))))
    `(smerge-markers                    ((t (:foreground ,text-ediff        :background ,background-diff-current-C                                                    ))))

    ;ediff
    `(ediff-current-diff-A        ((t (:foreground unspecified :background ,background-diff-current-A ))))
    `(ediff-current-diff-Ancestor ((t (:foreground unspecified :background ,background-diff-current-Ancestor            ))))
    `(ediff-current-diff-B        ((t (:foreground unspecified :background ,background-diff-current-B ))))
    `(ediff-current-diff-C        ((t (:foreground unspecified :background ,background-diff-current-C ))))

    `(ediff-even-diff-A           ((t (:foreground unspecified :background ,background-diff-even-A          ))))
    `(ediff-even-diff-Ancestor    ((t (:foreground unspecified :background ,background-diff-even-Ancestor            ))))
    `(ediff-even-diff-B           ((t (:foreground unspecified :background ,background-diff-even-B            ))))
    `(ediff-even-diff-C           ((t (:foreground unspecified :background ,background-diff-even-C            ))))

    `(ediff-fine-diff-A           ((t (:foreground unspecified :background ,background-diff-fine-A    ))))
    `(ediff-fine-diff-Ancestor    ((t (:foreground unspecified :background ,background-diff-fine-Ancestor            ))))
    `(ediff-fine-diff-B           ((t (:foreground unspecified :background ,background-diff-fine-B    ))))
    `(ediff-fine-diff-C           ((t (:foreground unspecified :background ,background-diff-fine-C    ))))

    `(ediff-odd-diff-A            ((t (:foreground unspecified :background ,background-diff-odd-A              ))))
    `(ediff-odd-diff-Ancestor     ((t (:foreground unspecified :background ,background-diff-odd-Ancestor              ))))
    `(ediff-odd-diff-B            ((t (:foreground unspecified :background ,background-diff-odd-B              ))))
    `(ediff-odd-diff-C            ((t (:foreground unspecified :background ,background-diff-odd-C              ))))

    ;ztree
    `(ztreep-diff-model-add-face     ((t (:foreground ,text-match :background ,background-match               ))))
    `(ztreep-diff-model-diff-face    ((t (:foreground ,color-yellow-1 :background ,color-yellow-2               ))))
    `(ztreep-diff-model-ignored-face ((t (:foreground ,color-blue-1   :background unspecified :strike-through t ))))
    `(ztreep-diff-model-normal-face  ((t (:foreground ,text-normal    :background unspecified                   ))))
    `(ztreep-expand-sign-face        ((t (:foreground ,color-yellow-1 :background unspecified                   ))))

    ;diff
    `(diff-added             ((t (:foreground ,text-diff-added   :background ,background-diff-added-highlight   ))))
    `(diff-refine-added      ((t (:foreground ,text-diff-added   :background ,background-diff-added-highlight   ))))
    `(diff-removed           ((t (:foreground ,text-diff-removed :background ,background-diff-removed-highlight ))))
    `(diff-refine-removed    ((t (:foreground ,text-diff-removed :background ,background-diff-removed-highlight ))))
    `(diff-indicator-added   ((t (:foreground ,text-diff-added   :background ,background-diff-added-highlight   ))))
    `(diff-indicator-removed ((t (:foreground ,text-diff-removed :background ,background-diff-removed-highlight ))))

    ;org
    `(org-agenda-calendar-event     ((t (:foreground ,color-blue-1                                                                                                 ))))
    `(org-agenda-calendar-sexp      ((t (:foreground ,color-blue-1                                                                                                 ))))
    `(org-agenda-clocking           ((t (:foreground ,color-green-1  :background ,color-green-2                                                                    ))))
    `(org-agenda-column-dateline    ((t (:foreground ,text-normal    :underline t                                                                                  ))))
    `(org-agenda-current-time       ((t (:foreground ,color-blue-1                                                                                                 ))))
    `(org-agenda-date               ((t (:foreground ,color-yellow-1 :bold t                                                                                       ))))
    `(org-agenda-date-today         ((t (:foreground ,color-yellow-1 :bold t :italic t                                                                             ))))
    `(org-agenda-date-weekend       ((t (:foreground ,color-yellow-1 :bold t                                                                                       ))))
    `(org-agenda-diary              ((t (:foreground ,text-normal                                                                                                  ))))
    `(org-agenda-dimmed-todo-face   ((t (:foreground ,text-low                                                                                                     ))))
    `(org-agenda-done               ((t (:foreground ,text-low       :background unspecified                                                                       ))))
    `(org-agenda-filter-category    ((t (:foreground ,text-normal                                                                                                  ))))
    `(org-agenda-filter-effort      ((t (:foreground ,text-normal                                                                                                  ))))
    `(org-agenda-filter-regexp      ((t (:foreground ,text-normal                                                                                                  ))))
    `(org-agenda-filter-tags        ((t (:foreground ,text-normal                                                                                                  ))))
    `(org-agenda-restriction-lock   ((t (:foreground ,text-normal                                                                                                  ))))
    `(org-agenda-structure          ((t (:foreground ,text-low                                                                                                     ))))
    `(org-archived                  ((t (:foreground ,text-normal    :background ,background                                                                     ))))
    `(org-block                     ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-block-begin-line          ((t (:foreground ,text-low       :background unspecified                                                                       ))))
    `(org-block-end-line            ((t (:foreground ,text-low       :background unspecified                                                                       ))))
    `(org-checkbox                  ((t (:foreground ,color-green-1  :background unspecified                                                                       ))))
    `(org-checkbox-statistics-done  ((t (:foreground ,text-low       :background unspecified                                                                       ))))
    `(org-checkbox-statistics-todo  ((t (:foreground ,color-green-1  :background unspecified                                                                       ))))
    `(org-clock-overlay             ((t (:foreground ,color-yellow-1 :background unspecified                                                                       ))))
    `(org-code                      ((t (:foreground ,color-blue-1   :background unspecified           :bold t :italic t :underline t                              ))))
    `(org-column                    ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-column-title              ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-date                      ((t (:foreground ,color-blue-1   :background unspecified           :underline t                                                ))))
    `(org-date-selected             ((t (:foreground ,text-hl        :background ,background-hl                                                                    ))))
    `(org-default                   ((t (:foreground ,color-green-1  :background unspecified                                                                       ))))
    `(org-document-info             ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-document-info-keyword     ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-document-title            ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-done                      ((t (:foreground ,text-low                                         :bold t                                                     ))))
    `(org-drawer                    ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-ellipsis                  ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-footnote                  ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-formula                   ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-headline-done             ((t (:foreground ,text-low       :background unspecified                                                                       ))))
    `(org-headline-todo             ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-hide                      ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-latex-and-related         ((t (:foreground ,text-normal    :background unspecified                                                                       ))))

    `(org-level-1                   ((t (:foreground ,text-low       :background unspecified           :bold t                                                     ))))
    `(org-level-2                   ((t (:foreground ,text-low       :background unspecified           :bold t                                                     ))))
    `(org-level-3                   ((t (:foreground ,text-low       :background unspecified           :bold t                                                     ))))
    `(org-level-4                   ((t (:foreground ,text-low       :background unspecified           :bold t                                                     ))))
    `(org-level-5                   ((t (:foreground ,text-low       :background unspecified           :bold t                                                     ))))
    `(org-level-6                   ((t (:foreground ,text-low       :background unspecified           :bold t                                                     ))))
    `(org-level-7                   ((t (:foreground ,text-low       :background unspecified           :bold t                                                     ))))
    `(org-level-8                   ((t (:foreground ,text-low       :background unspecified           :bold t                                                     ))))

    `(org-link                      ((t (:foreground ,color-blue-1   :background unspecified           :bold t :underline t                                        ))))
    `(org-list-dt                   ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-macro                     ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-meta-line                 ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-mode-line-clock           ((t (:foreground ,color-green-1  :background ,color-green-2        :bold t                                                     ))))
    `(org-mode-line-clock-overrun   ((t (:foreground ,color-red-1    :background ,color-red-2          :bold t                                                     ))))
    `(org-property-value            ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-quote                     ((t (:foreground ,text-normal    :background unspecified           :italic t                                                   ))))
    `(org-scheduled                 ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-scheduled-previously      ((t (:foreground ,alert-1        :background unspecified           :bold t                                                     ))))
    `(org-scheduled-today           ((t (:foreground ,color-green-1  :background unspecified                                                                       ))))
    `(org-sexp-date                 ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-special-keyword           ((t (:foreground ,color-blue-1   :background unspecified                                                                       ))))
    `(org-table                     ((t (:foreground ,color-blue-1   :background ,color-blue-2                                                                     ))))
    `(org-table-header              ((t (:foreground ,color-green-1  :background ,color-green-2                                                                    ))))
    `(org-tag                       ((t (:foreground ,color-blue-1   :background unspecified                                                                       ))))
    `(org-tag-group                 ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-target                    ((t (:foreground ,text-normal    :background unspecified           :underline t                                                ))))
    `(org-time-grid                 ((t (:foreground ,text-normal    :background unspecified                                                                       ))))
    `(org-todo                      ((t (:foreground ,color-red-1    :background unspecified           :bold t                                                     ))))
    `(org-verbatim                  ((t (:foreground ,"#ff0000"      :background unspecified           :bold t                                                     ))))
    `(org-verse                     ((t (:foreground ,color-green-1  :background unspecified                                                                       ))))
    `(org-warning                   ((t (:foreground ,color-orange-1 :background unspecified           :bold t                                                     ))))
    `(org-imminent-deadline         ((t (:foreground ,alert-1        :background unspecified           :bold t                                                     ))))
    `(org-upcoming-deadline         ((t (:foreground ,alert-2        :background unspecified                                                                       ))))
    `(org-upcoming-distant-deadline ((t (:foreground ,alert-3        :background unspecified                                                                       ))))

    `(diff-added   ((t (:foreground ,text-diff-added   :background ,background-diff-added   ))))
    `(diff-removed ((t (:foreground ,text-diff-removed :background ,background-diff-removed ))))

    ;mode-line
    `(mode-line                      ((t (:foreground ,text-normal     :background ,background-mode-line-active             ))))
    `(mode-line-inactive             ((t (:foreground ,text-low        :background ,background-mode-line                    ))))
    `(mode-line-buffer-id            ((t (:foreground ,text-mode-line  :background ,background-buffer-id-projectile :bold t ))))
    `(telephone-line-projectile      ((t (:foreground ,text-mode-line  :background ,background-buffer-id-projectile :bold t ))))
    `(telephone-line-accent-active   ((t (:foreground ,text-normal     :background ,background-mode-line                    ))))
    `(telephone-line-accent-inactive ((t (:foreground ,text-low        :background ,background-mode-line                    ))))
    `(telephone-line-evil-emacs      ((t (:foreground ,evil-emacs-1    :background ,evil-emacs-2                            ))))
    `(telephone-line-evil-insert     ((t (:foreground ,evil-insert-1   :background ,evil-insert-2                           ))))
    `(telephone-line-evil-motion     ((t (:foreground ,evil-motion-1   :background ,evil-motion-2                           ))))
    `(telephone-line-evil-normal     ((t (:foreground ,evil-normal-1   :background ,evil-normal-2                           ))))
    `(telephone-line-evil-operator   ((t (:foreground ,evil-operator-1 :background ,evil-operator-2                         ))))
    `(telephone-line-evil-replace    ((t (:foreground ,evil-replace-1  :background ,evil-replace-2                          ))))
    `(telephone-line-evil-visual     ((t (:foreground ,evil-visual-1   :background ,evil-visual-2                           ))))
    `(telephone-line-warning         ((t (:foreground ,text-low                                                             ))))

    `(evil-ex-lazy-highlight     ((t (:foreground ,text-match :background ,background-match ))))
    `(evil-ex-search             ((t (:foreground ,text-match :background ,background-match ))))
    `(evil-ex-substitute-matches ((t (:foreground ,text-match :background ,background-match ))))
    `(lazy-highlight             ((t (:foreground ,text-match :background ,background-match ))))
    `(isearch                    ((t (:foreground ,text-match :background ,background-match ))))

    `(whitespace-space   ((t (:foreground ,text-low :background unspecified ))))
    `(whitespace-newline ((t (:foreground ,text-low :background unspecified ))))

    `(lsp-flycheck-warning-unnecessary-face     ((t (:foreground ,text-warning   :bold t :underline t ))))
    `(flycheck-error                            ((t (:foreground ,text-error     :bold t :underline t ))))
    `(flycheck-fringe-info                      ((t (:foreground ,text-info      :bold t              ))))
    `(flycheck-fringe-warning                   ((t (:foreground ,text-warning   :bold t              ))))
    `(flycheck-fringe-error                     ((t (:foreground ,text-error     :bold t              ))))
    `(flycheck-error-list-checker-name          ((t (:foreground ,text-normal    :bold t              ))))
    `(flycheck-error-list-column-number         ((t (:foreground ,text-normal    :bold t              ))))
    `(flycheck-error-list-error                 ((t (:foreground ,text-error     :bold t :underline t ))))
    `(flycheck-error-list-error-message         ((t (:foreground ,text-error     :bold t              ))))
    `(flycheck-error-list-filename              ((t (:foreground ,text-normal    :bold t              ))))
    `(flycheck-error-list-highlight             ((t (:foreground ,text-normal    :bold t :underline t ))))
    `(flycheck-error-list-id                    ((t (:foreground ,text-normal    :bold t              ))))
    `(flycheck-error-list-id-with-explainer     ((t (:foreground ,text-normal    :bold t              ))))
    `(flycheck-error-list-info                  ((t (:foreground ,color-blue-1   :bold t              ))))
    `(flycheck-error-list-line-number           ((t (:foreground ,text-normal    :bold t              ))))
    `(flycheck-error-list-warning               ((t (:foreground ,text-warning   :bold t              ))))

    `(bookmark-face ((t (:foreground ,text-normal :background unspecified ))))

    `(ansi-color-bold ((t (:foreground ,text-match :background ,background-match :bold t ))))

    `(ivy-current-match              ((t (:foreground ,text-match     :background ,background-match :bold t   ))))
    `(ivy-minibuffer-match-face-1    ((t (:foreground ,color-green-1  :background ,color-green-2              ))))
    `(ivy-minibuffer-match-face-2    ((t (:foreground ,color-red-1    :background ,color-red-2                ))))
    `(ivy-minibuffer-match-face-3    ((t (:foreground ,color-blue-1   :background ,color-blue-2               ))))
    `(ivy-minibuffer-match-face-4    ((t (:foreground ,color-yellow-1 :background ,color-yellow-2             ))))
    `(ivy-org                        ((t (:foreground ,text-low       :background unspecified       :italic t ))))
    `(ivy-modified-buffer            ((t (:foreground ,text-low       :background unspecified       :italic t ))))
    `(ivy-modified-outside-buffer    ((t (:foreground ,text-low       :background unspecified       :italic t ))))
    `(ivy-grep-info                  ((t (:foreground ,text-match     :background ,background-match           ))))
    `(ivy-grep-line-number           ((t (:foreground ,text-match     :background ,background-match           ))))

    `(swiper-background-match-face-1 ((t (:foreground ,color-green-1  :background ,color-green-2  ))))
    `(swiper-background-match-face-2 ((t (:foreground ,color-red-1    :background ,color-red-2    ))))
    `(swiper-background-match-face-3 ((t (:foreground ,color-blue-1   :background ,color-blue-2   ))))
    `(swiper-background-match-face-4 ((t (:foreground ,color-yellow-1 :background ,color-yellow-2 ))))
    `(swiper-line-face               ((t (:foreground ,text-match     :background ,background-match ))))
    `(swiper-match-face-1            ((t (:foreground ,color-green-1  :background ,color-green-2  ))))
    `(swiper-match-face-2            ((t (:foreground ,color-red-1    :background ,color-red-2    ))))
    `(swiper-match-face-3            ((t (:foreground ,color-blue-1   :background ,color-blue-2   ))))
    `(swiper-match-face-4            ((t (:foreground ,color-yellow-1 :background ,color-yellow-2 ))))

    `(treemacs-root-face                ((t (:foreground ,text-match       :background unspecified           :bold t ))))
    `(treemacs-file-face                ((t (:foreground ,color-green-1        :background ,color-green-2                ))))
    `(treemacs-directory-collapsed-face ((t (:foreground ,text-low             :background unspecified                   ))))
    `(treemacs-directory-face           ((t (:foreground ,text-low             :background unspecified                   ))))
    `(treemacs-git-modified-face        ((t (:foreground ,text-match       :background ,background-match               ))))
    `(treemacs-git-ignored-face         ((t (:foreground ,text-low             :background unspecified                   ))))
    `(treemacs-git-untracked-face       ((t (:foreground ,color-red-1          :background ,color-red-2                  ))))
    `(treemacs-fringe-indicator-face    ((t (:foreground ,background-mode-line :background ,background-mode-line         ))))
    `(treemacs-git-renamed-face         ((t (:foreground ,color-orange-1       :background unspecified                   ))))
    `(treemacs-git-added-face           ((t (:foreground ,color-red-1          :background unspecified                   ))))
    `(treemacs-git-conflict-face        ((t (:foreground ,color-red-1          :background unspecified                   ))))
    `(treemacs-git-added-face           ((t (:foreground ,color-red-1          :background unspecified                   ))))

    `(company-tooltip-selection ((t (:foreground ,text-match :background ,background-match ))))

    `(helm-ff-executable        ((t (:foreground ,text-match :background ,background-match ))))

    `(focus-unfocused           ((t (:foreground ,text-lower ))))

    `(hydra-face-red            ((t (:foreground ,text-highlight-2 :bold t))))
    `(hydra-face-blue           ((t (:foreground ,text-highlight-2 :bold t))))

    `(bm-face                   ((t (:foreground ,color-green-1  :background ,color-green-2    ))))
    `(bm-fringe-face            ((t (:foreground ,text-match     :background ,background-match ))))
    `(bm-fringe-persistent-face ((t (:foreground ,text-match     :background ,background-match ))))
    `(bm-persistent-face        ((t (:foreground ,color-red-1    :background ,color-red-2      ))))

    `(help-key-binding          ((t (:foreground ,color-yellow-1 :background ,color-yellow-2   ))))
    `(error                     ((t (:foreground ,"#ff0000"                                    ))))

  )

))

;; Use the regular emacs theme except of the console
(if (= INDEX-CHIAROSCURO INDEX-CONSOLE)

  (progn

    (if (eq INDEX-CHIAROSCURO INDEX-CONSOLE) (progn (load-file "~/.emacs.d/theme_console.el")))

    (deftheme chiaroscuro)

    (custom-theme-set-faces 'chiaroscuro

    ;mode-line
    `(mode-line                      ((t (:foreground ,text-normal     :background ,background-mode-line-active             ))))
    `(mode-line-inactive             ((t (:foreground ,text-low        :background ,background-mode-line                    ))))
    `(mode-line-buffer-id            ((t (:foreground ,text-mode-line  :background ,background-buffer-id-projectile :bold t ))))
    `(telephone-line-projectile      ((t (:foreground ,text-mode-line  :background ,background-buffer-id-projectile :bold t ))))
    `(telephone-line-accent-active   ((t (:foreground ,text-normal     :background ,background-mode-line                    ))))
    `(telephone-line-accent-inactive ((t (:foreground ,text-low        :background ,background-mode-line                    ))))
    `(telephone-line-evil-emacs      ((t (:foreground ,evil-emacs-1    :background ,evil-emacs-2                            ))))
    `(telephone-line-evil-insert     ((t (:foreground ,evil-insert-1   :background ,evil-insert-2                           ))))
    `(telephone-line-evil-motion     ((t (:foreground ,evil-motion-1   :background ,evil-motion-2                           ))))
    `(telephone-line-evil-normal     ((t (:foreground ,evil-normal-1   :background ,evil-normal-2                           ))))
    `(telephone-line-evil-operator   ((t (:foreground ,evil-operator-1 :background ,evil-operator-2                         ))))
    `(telephone-line-evil-replace    ((t (:foreground ,evil-replace-1  :background ,evil-replace-2                          ))))
    `(telephone-line-evil-visual     ((t (:foreground ,evil-visual-1   :background ,evil-visual-2                           ))))
    `(telephone-line-warning         ((t (:foreground ,text-low                                                             ))))

  )

))

;;;###autoload
(when load-file-name
     (add-to-list 'custom-theme-load-path
         (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'chiaroscuro)

;;; chiaroscuro-theme.el ends here
