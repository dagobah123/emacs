;;; chiaroscuro-theme.el --- Low contrast night theme

;;; Commentary:

;;; Code:

(defvar text-1            "")
(defvar text-2            "")
(defvar text-3            "")
(defvar background-1      "")
(defvar background-2      "")
(defvar background-3      "")
(defvar background-4      "")
(defvar background-cursor "")
(defvar green-1           "")
(defvar green-2           "")
(defvar red-1             "")
(defvar red-2             "")
(defvar blue-1            "")
(defvar blue-2            "")
(defvar yellow-1          "")
(defvar yellow-2          "")
(defvar violet-1          "")
(defvar violet-2          "")

  (cond
   (
    (string-equal system-type "windows-nt")
    (progn
      (custom-theme-set-faces
       'user
       '(org-table ((t (:family "Courier New" :height 1.0))))
       '(org-link  ((t (:family "Courier New" :height 1.0 :underline t))))
       )
      )
    )
   (
    (string-equal system-type "gnu/linux")
    (progn
      (custom-theme-set-faces
       'user
       '(org-table ((t (:family "DejaVu Sans Mono" :height 1.0))))
       '(org-link  ((t (:family "DejaVu Sans Mono" :height 1.0 :underline t))))
       )
      )
    )
  )



(if (eq CHIAROSCURO_INDEX 2) ;original chiaroscuro theme
    (progn
        (setq background-1 "#000000")
        (setq text-1 "#aaaaaa")
        (setq text-2 "#888888")
        (setq text-3 "#fff3b6")
        (setq background-1 "#222222")
        (setq background-2 "#888888")
        (setq background-3 "#555555")
        (setq text-1 "#db7b00")
        (setq text-2 "#c7580b")
        (setq text-3 "#c7580b")
        (setq green-1 "#22aa22")
        (setq green-2 "#cceecc")
        (setq red-1 "#ac2222")
        (setq red-2 "#eecccc")
        ;(setq org-todo-keyword-faces '(("IN-PROGRESS" . (:foreground "#00ff00" :weight bold))))
        )
  )

(if (eq CHIAROSCURO_INDEX 1) ;low contrast chiaroscuro theme
    (progn
        (setq background-1 "#333333")
        (setq text-1 "#aaaaaa")
        (setq text-2 "#b76600")
        (setq text-3 "#545c94")
        (setq background-1 "#444444")
        (setq background-2 "#888888")
        (setq background-3 "#cfc594")
        (setq green-1 "#22aa22")
        (setq green-2 "#cceecc")
        (setq red-1 "#ac2222")
        (setq red-2 "#eecccc")
        ;(setq org-todo-keyword-faces '(("IN-PROGRESS" . (:foreground "#ff0000" :weight bold))))
    )
)

(if (eq CHIAROSCURO_INDEX 0) ;light chiaroscuro theme
    (progn
        (setq text-1 "#444444") ;main text
        (setq text-2 "#999999")
        (setq text-3 "#bbbbbb")
        (setq background-1 "#dddddd")
        (setq background-2 "#cccccc")
        (setq background-3 "#d5d5d5")
        (setq background-4 "#d7d7d7")
        (setq background-cursor "#000000")
        (setq green-1 "#22aa22")
        (setq green-2 "#cceecc")
        (setq red-1 "#ac2222")
        (setq red-2 "#eecccc")
        (setq blue-1 "#2222ac")
        (setq blue-2 "#ccccee")
        (setq yellow-1 "#acac22")
        (setq yellow-2 "#eeeecc")
        (setq violet-1 "#9400d3")
        (setq violet-2 "#9400d3")
        (setq org-todo-keyword-faces '(("IN-PROGRESS" . (:foreground "#22aa22" :weight bold))))
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
  `(default                      ((t (:foreground ,text-1   :background ,background-1))))
  `(cursor                       ((t (                        :background ,background-cursor))))
  `(link                         ((t (:foreground ,text-1   :underline t               ))))
  `(region                       ((t (:foreground ,text-1   :background ,background-2))))
  `(cua-rectangle                ((t (:foreground ,text-1   :background ,background-2))))
  `(highlight                    ((t (:foreground ,text-1   :background ,nil           ))))
  `(show-paren-match             ((t (:foreground ,text-1   :background ,background-2))))
  `(hl-line                      ((t (:foreground ,nil      :background ,background-4))))
  `(fringe                       ((t (:foreground ,text-1   :background ,background-2))))
  `(minibuffer-prompt            ((t (:foreground ,text-1   :background ,background-1))))
  `(ido-first-match              ((t (:foreground ,green-1  :background ,green-2 :bold t                    ))))
  `(ido-only-match               ((t (:foreground ,green-1  :background ,green-2 :bold t                    ))))
  `(lsp-face-highlight-read      ((t (:foreground ,yellow-1 :background ,yellow-2 :bold t                    ))))
  `(lsp-face-highlight-write     ((t (:foreground ,yellow-1 :background ,yellow-2 :bold t                    ))))
  `(eshell-prompt                ((t (:foreground ,text-2   :background ,background-1 :bold t))))
  `(secondary-selection          ((t (:foreground ,blue-1   :background ,blue-2 :bold t))))
  `(git-commit-summary           ((t (:foreground ,blue-1   :background ,blue-2))))

  `(line-number                  ((t (:foreground ,text-3   :background ,background-1))))
  `(line-number-current-line     ((t (:foreground ,yellow-1 :background ,yellow-2))))
  `(line-number-major-tick       ((t (:foreground ,text-2   :background ,background-1))))
  `(line-number-minor-tick       ((t (:foreground ,text-2   :background ,background-1))))

  ;font-lock
  `(font-lock-builtin-face              ((t (:foreground ,text-1                            ))))
  `(font-lock-comment-delimiter-face    ((t (:foreground ,text-1                            ))))
  `(font-lock-comment-face              ((t (:foreground ,text-2                            ))))
  `(font-lock-constant-face             ((t (:foreground ,text-1                            ))))
  `(font-lock-doc-face                  ((t (:foreground ,text-1                            ))))
  `(font-lock-function-name-face        ((t (:foreground ,green-1  :background ,green-2 :bold t                    ))))
  `(font-lock-keyword-face              ((t (:foreground ,text-1   :bold t                    ))))
  `(font-lock-negation-char-face        ((t (:foreground ,text-1                            ))))
  `(font-lock-preprocessor-face         ((t (:foreground ,violet-1 :background ,violet-2                            ))))
  `(font-lock-regexp-grouping-backslash ((t (:foreground ,text-1                            ))))
  `(font-lock-regexp-grouping-construct ((t (:foreground ,text-1                            ))))
  `(font-lock-string-face               ((t (:foreground ,text-2                            ))))
  `(font-lock-type-face                 ((t (:foreground ,red-1    :background ,red-2                            ))))
  `(font-lock-variable-name-face        ((t (:foreground ,blue-1   :background ,blue-2 :bold t                    ))))
  `(font-lock-warning-face              ((t (:foreground ,background-2   :background ,background-1))))

  ;dired
  `(dired-directory       ((t (:foreground ,yellow-1 :background, yellow-2))))
  `(dired-flagged         ((t (:foreground ,red-1    :background, red-2))))
  `(dired-header          ((t (:foreground ,green-1  :background, green-2))))
  `(dired-ignored         ((t (:foreground ,text-1   :background, background-1))))
  `(dired-mark            ((t (:foreground ,red-1    :background, red-2))))
  `(dired-marked          ((t (:foreground ,red-1    :background, red-2))))
  `(dired-narrow-blink    ((t (:foreground ,text-1   :background, background-1))))
  `(dired-perm-write      ((t (:foreground ,text-1   :background, background-1))))
  `(dired-set-id          ((t (:foreground ,text-1   :background, background-1))))
  `(dired-special         ((t (:foreground ,text-1   :background, background-1))))
  `(dired-symlink         ((t (:foreground ,text-1   :background, background-1))))
  `(dired-warning         ((t (:foreground ,text-1   :background, background-1))))

  ;helm
  `(helm-minibuffer-prompt            ((t (:foreground ,text-1 :background ,background-1             ))))
  `(helm-match                        ((t (:foreground ,text-1                                         ))))
  `(helm-candidate-number             ((t (:foreground ,text-1                                         ))))
  `(helm-M-x-key                      ((t (:foreground ,text-1 :underline t                            ))))
  `(helm-source-header                ((t (:foreground ,text-1 :bold t                                 ))))
  `(helm-selection                    ((t (:foreground ,green-1 :background ,green-2 :bold t    ))))
  `(helm-swoop-target-line-face       ((t (:foreground ,green-1 :bold t                                 ))))
  `(helm-swoop-target-word-face       ((t (:foreground ,green-1 :background ,green-2             ))))
  `(helm-swoop-line-number-face       ((t (:foreground ,text-1 :background ,background-1 :weight bold))))
  `(helm-swoop-target-line-block-face ((t (:foreground ,text-1 :background ,background-1             ))))
  `(helm-swoop-target-word-face       ((t (:foreground ,text-1 :background ,background-1 :bold t     ))))
  `(helm-ff-rsync-progress            ((t (:foreground ,text-1                                         ))))
  `(helm-ff-rsync-progress            ((t (:foreground ,text-1                                         ))))
  `(helm-buffer-saved-out             ((t (:foreground ,text-1                                         ))))
  `(helm-ff-prefix                    ((t (:foreground ,yellow-1 :background ,yellow-2                                        ))))

  ;elfeed
  `(elfeed-log-date-face            ((t (:foreground ,text-1 :background ,background-1))))
  `(elfeed-log-debug-level-face     ((t (:foreground ,text-1 :background ,background-1))))
  `(elfeed-log-error-level-face     ((t (:foreground ,text-1 :background ,background-1))))
  `(elfeed-log-info-level-face      ((t (:foreground ,text-1 :background ,background-1))))
  `(elfeed-log-warn-level-face      ((t (:foreground ,text-1 :background ,background-1))))
  `(elfeed-search-date-face         ((t (:foreground ,text-1 :background ,background-1))))
  `(elfeed-search-feed-face         ((t (:foreground ,text-1 :background ,background-1))))
  `(elfeed-search-filter-face       ((t (:foreground ,text-1 :background ,background-1))))
  `(elfeed-search-last-update-face  ((t (:foreground ,text-1 :background ,background-1))))
  `(elfeed-search-tag-face          ((t (:foreground ,text-1 :background ,background-1))))
  `(elfeed-search-title-face        ((t (:foreground ,text-1 :background ,background-1))))
  `(elfeed-search-unread-count-face ((t (:foreground ,text-1 :background ,background-1))))
  `(elfeed-search-unread-title-face ((t (:foreground ,text-1 :background ,background-1))))
  `(message-header-cc               ((t (:foreground ,text-1                            ))))
  `(message-header-name             ((t (:foreground ,text-1                            ))))
  `(message-header-newsgroups       ((t (:foreground ,text-1                            ))))
  `(message-header-other            ((t (:foreground ,text-1                            ))))
  `(message-header-subject          ((t (:foreground ,text-1                            ))))
  `(message-header-to               ((t (:foreground ,text-1                            ))))
  `(header-line                     ((t (:foreground ,text-1                            ))))

  ;magit
  `(magit-header-line                 ((t (:foreground ,text-1  :bold t                                                                   ))))
  `(magit-section-heading             ((t (:foreground ,text-1                                                                            ))))
  `(magit-branch-current              ((t (:foreground ,green-1 :background ,green-2      :bold t :box (:line-width 3 :color ,green-1)))))
  `(magit-branch-local                ((t (:foreground ,green-1 :background ,green-2      :bold t :box (:line-width 3 :color ,green-1)))))
  `(magit-branch-remote               ((t (:foreground ,red-1   :background ,red-2        :bold t :box (:line-width 3 :color ,red-1)  ))))
  `(magit-branch-remote-head          ((t (:foreground ,red-1   :background ,red-2        :bold t :box (:line-width 3 :color ,red-1)  ))))
  `(magit-branch-upstream             ((t (:foreground ,red-1   :background ,red-2        :bold t :box (:line-width 3 :color ,red-1)  ))))
  `(magit-section-highlight           ((t (                       :background ,background-2 :bold t                                       ))))
  `(magit-log-author                  ((t (:foreground ,text-2                                                                            ))))
  `(magit-log-date                    ((t (:foreground ,text-2                                                                            ))))
  `(magit-keyword-squash              ((t (:foreground ,text-1                                                                            ))))
  `(magit-diff-context                ((t (:foreground ,text-1  :background ,nil                                                          ))))
  `(magit-diff-context-highlight      ((t (:foreground ,text-1  :background ,nil                                                          ))))
  `(magit-diff-hunk-region            ((t (:foreground ,text-1  :background ,background-2                                               ))))
  `(magit-diff-conflict-heading       ((t (:foreground ,text-1  :background ,background-2                                               ))))
  `(magit-diff-file-heading           ((t (:foreground ,text-1  :background ,background-2                                               ))))
  `(magit-diff-file-heading-selection ((t (:foreground ,text-1  :background ,background-2                                               ))))
  `(magit-diff-hunk-heading           ((t (:foreground ,text-2  :background ,background-2                                               ))))
  `(magit-diff-hunk-heading-selection ((t (:foreground ,text-1  :background ,background-2                                               ))))
  `(magit-diff-file-heading-highlight ((t (:foreground ,text-1  :background ,background-2                                               ))))
  `(magit-diff-hunk-heading-highlight ((t (:foreground ,text-1  :background ,background-2                                               ))))
  `(magit-diff-whitespace-warning     ((t (:foreground ,text-1  :background ,red-2                                                      ))))
  `(magit-diff-added-highlight        ((t (:foreground ,green-1 :background ,green-2                                                    ))))
  `(magit-diff-added                  ((t (:foreground ,text-2  :background ,background-2                                               ))))
  `(magit-diff-removed-highlight      ((t (:foreground ,red-1   :background ,red-2                                                      ))))
  `(magit-diff-removed                ((t (:foreground ,text-2  :background ,background-2                                               ))))

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
  `(org-block                         ((t (:foreground ,text-1  :background ,background-3 :family "FreeMono"))))
  `(org-block-begin-line              ((t (:foreground ,text-2  :background ,background-2                                               ))))
  `(org-block-end-line                ((t (:foreground ,text-2  :background ,background-2                                               ))))
  `(org-checkbox                      ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-checkbox-statistics-done      ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-checkbox-statistics-todo      ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-clock-overlay                 ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-code                          ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-column                        ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-column-title                  ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-date                          ((t (:foreground ,red-1   :background ,red-2                           :underline t                                  ))))
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
  `(org-table                         ((t (:foreground ,green-1  :background ,green-2 ))))
  `(org-table-header                  ((t (:foreground ,green-1  :background ,green-2 ))))
  `(org-tag                           ((t (:foreground ,text-2  :background ,background-1 ))))
  `(org-tag-group                     ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-target                        ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-time-grid                     ((t (:foreground ,text-3  :background ,background-1 ))))
  `(org-todo                          ((t (:foreground ,red-1                               :bold t                                       ))))
  `(org-upcoming-deadline             ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-upcoming-distant-deadline     ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-verbatim                      ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-verse                         ((t (:foreground ,text-1  :background ,background-1 ))))
  `(org-warning                       ((t (:foreground ,text-1  :background ,background-1 ))))

  ;mode-line
  `(mode-line                         ((t (:foreground ,text-1 :background ,background-2))))
  `(mode-line-inactive                ((t (:foreground ,text-2 :background ,background-2))))
  `(mode-line-buffer-id               ((t (:foreground ,text-1 :bold t                    ))))
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

  `(whitespace-big-indent       ((t (:foreground ,text-2 :background ,background-1))))
  `(whitespace-empty            ((t (:foreground ,text-2 :background ,background-1))))
  `(whitespace-hspace           ((t (:foreground ,text-2 :background ,background-1))))
  `(whitespace-indentation      ((t (:foreground ,text-2 :background ,background-1))))
  `(whitespace-line             ((t (:foreground ,text-2 :background ,background-1))))
  `(whitespace-newline          ((t (:foreground ,text-2 :background ,background-1))))
  `(whitespace-space            ((t (:foreground ,text-2 :background ,background-1))))
  `(whitespace-space-after-tab  ((t (:foreground ,text-2 :background ,background-1))))
  `(whitespace-space-before-tab ((t (:foreground ,text-2 :background ,background-1))))
  `(whitespace-tab              ((t (:foreground ,text-2 :background ,background-1))))
  `(whitespace-trailing         ((t (:foreground ,text-2 :background ,background-1))))

  `(dashboard-banner-logo-title  ((t (:foreground ,text-1 :background ,background-1))))
  `(dashboard-footer             ((t (:foreground ,text-1 :background ,background-1))))
  `(dashboard-heading            ((t (:foreground ,violet-1 :background ,background-1 :bold t))))
  `(dashboard-items-face         ((t (:foreground ,text-1 :background ,background-1 :bold t))))
  `(dashboard-navigator          ((t (:foreground ,text-1 :background ,background-1))))
  `(dashboard-no-items-face      ((t (:foreground ,text-1 :background ,background-1))))
  `(dashboard-text-banner        ((t (:foreground ,text-1 :background ,background-1))))
  
  ;`(ivy-action                     ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-completions-annotations    ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-confirm-face               ((t (:foreground ,text-1   :background ,background-1      ))))
  `(ivy-current-match               ((t (:foreground ,green-1  :background ,green-2           ))))
  ;`(ivy-cursor                     ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-grep-info                  ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-grep-line-number           ((t (:foreground ,text-1   :background ,background-1      ))))
  `(ivy-highlight-face              ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-match-required-face        ((t (:foreground ,text-1   :background ,background-1      ))))
  `(ivy-minibuffer-match-face-1     ((t (:foreground ,blue-1   :background ,blue-2       :bold))))
  `(ivy-minibuffer-match-face-2     ((t (:foreground ,green-1  :background ,green-2      :bold))))
  `(ivy-minibuffer-match-face-3     ((t (:foreground ,red-1    :background ,red-2        :bold))))
  `(ivy-minibuffer-match-face-4     ((t (:foreground ,yellow-1 :background ,yellow-2     :bold))))
  ;`(ivy-minibuffer-match-highlight ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-modified-buffer            ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-modified-outside-buffer    ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-org                        ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-prompt-match               ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-remote                     ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-separator                  ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-subdir                     ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-virtual                    ((t (:foreground ,text-1   :background ,background-1      ))))
  ;`(ivy-yanked-word                ((t (:foreground ,text-1   :background ,background-1      ))))

;  `(company-echo-common ((t (:foreground ,colorB-1))))
;  `(custom-invalid ((t (:background ,red-2 :foreground ,text-1))))
;  `(dired-warning ((t (:foreground ,color1))))
;  `(eww-valid-certificate ((t (:foreground ,color1 :bold t))))
;  `(git-commit-nonempty-second-line ((t (:foreground ,color1))))
;  `(git-commit-overlong-summary ((t (:foreground ,color1))))
;  `(ido-incomplete-regexp ((t (:foreground ,color1))))
;  `(ido-indicator ((t (:background ,red-2 :foreground ,text-1))))
;  `(ido-subdir ((t (:foreground ,colorB-1))))
;  `(ido-first-match ((t (:foreground ,text-1 :bold t))))
;  `(ido-only-match ((t (:foreground ,text-1 :bold t))))
;  `(info-xref-visited ((t (:foreground ,color1 :underline t))))
;  `(ivy-current-match ((t (:foreground ,text-1 :bold t))))
;  `(lsp-lsp-flycheck-warning-unnecessary-face ((t (:background ,background-color :foreground ,colorB-1 :underline t))))
;  `(markdown-missing-link-face ((t (:foreground ,color1))))
;  `(minibuffer-prompt ((t (:foreground ,color1))))
;  `(package-status-disabled ((t (:foreground ,color1))))
;  `(package-status-unsigned ((t (:foreground ,color1))))
;  `(secondary-selection ((t (:background ,color1 :foreground ,colorB-1))))
;  `(transient-argument ((t (:foreground ,color1))))
;  `(transient-inactive-argument ((t (:foreground ,color1))))
;  `(transient-inactive-value ((t (:foreground ,color1))))
;  `(whitespace-space ((t (:foreground ,text-1))))
;  `(whitespace-trailing ((t (:foreground ,text-1 :bold t))))
)

;;;###autoload
(when load-file-name
     (add-to-list 'custom-theme-load-path
         (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'chiaroscuro)

;;; chiaroscuro-theme.el ends here
