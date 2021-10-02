;;; chiaroscuro-theme.el --- Low contrast night theme

;;; Commentary:

;;; Code:

(defvar highlight-1      "")
(defvar highlight-2      "")
(defvar background-color "")
(defvar text-1           "")
(defvar text-2           "")
(defvar text-3           "")
(defvar text-4           "")
(defvar text-5           "")
(defvar text-6           "")
(defvar text-7           "")
(defvar color1-1         "")
(defvar color1-2         "")
(defvar color2-1         "")
(defvar color2-2         "")
(defvar color2-3         "")
(defvar green-1          "")
(defvar green-2          "")
(defvar green-3          "")
(defvar red-1            "")
(defvar red-2            "")
(defvar red-3            "")

(setq CHIAROSCURO_INDEX (+ CHIAROSCURO_INDEX 1))

(if (eq CHIAROSCURO_INDEX 0)
    (progn
        (setq highlight-1 "#fff3b6")
        (setq highlight-2 "#dabc14")
        (setq background-color "#000000")
        (setq text-1 "#aaaaaa")
        (setq text-2 "#888888")
        (setq text-3 "#555555")
        (setq text-4 "#444444")
        (setq text-5 "#333333")
        (setq text-6 "#212121")
        (setq text-7 "#111111")
        (setq color1-1 "#db7b00")
        (setq color1-2 "#c7580b")
        (setq color2-1 "#586cef")
        (setq color2-2 "#6262b6")
        (setq color2-3 "#282877")
        (setq green-2 "#44a536")
        (setq green-3 "#577c52")
        (setq red-2 "#d23b3b")
        (setq red-3 "#ae6767")
        (setq red-1 "#ff0000")
        (setq green-1 "#00ff00")
        )
  )

(if (eq CHIAROSCURO_INDEX 1)
    (progn
        (setq highlight-1 "#cfc594")
        (setq highlight-2 "#dabc14")
        (setq background-color "#333333")
        (setq text-1 "#aaaaaa")
        (setq text-2 "#888888")
        (setq text-3 "#666666")
        (setq text-4 "#555555")
        (setq text-5 "#383838")
        (setq text-6 "#363636")
        (setq text-7 "#2f2f2f")
        (setq color1-1 "#b76600")
        (setq color1-2 "#a2531b")
        (setq color2-1 "#545c94")
        (setq color2-2 "#6262b6")
        (setq color2-3 "#282877")
        (setq green-2 "#35812a")
        (setq green-3 "#577c52")
        (setq red-2 "#a84d4d")
        (setq red-3 "#ae6767")
        (setq red-1 "#872727")
        (setq green-1 "#2d752d")
    )
)

(if (eq CHIAROSCURO_INDEX 1)
    (progn
        (setq highlight-1 "#cfc594")
        (setq highlight-2 "#dabc14")
        (setq background-color "#333333")
        (setq text-1 "#aaaaaa")
        (setq text-2 "#888888")
        (setq text-3 "#666666")
        (setq text-4 "#555555")
        (setq text-5 "#383838")
        (setq text-6 "#363636")
        (setq text-7 "#2f2f2f")
        (setq color1-1 "#b76600")
        (setq color1-2 "#a2531b")
        (setq color2-1 "#545c94")
        (setq color2-2 "#6262b6")
        (setq color2-3 "#282877")
        (setq green-2 "#35812a")
        (setq green-3 "#577c52")
        (setq red-2 "#a84d4d")
        (setq red-3 "#ae6767")
        (setq red-1 "#872727")
        (setq green-1 "#2d752d")
    )
)

(deftheme chiaroscuro)

(custom-theme-set-faces 'chiaroscuro

    `(default ((t (:background ,background-color :foreground ,text-2))))
    `(link ((t (:foreground ,color2-1 :underline t))))
    `(font-lock-builtin-face ((t (:foreground ,color1-1))))
    `(font-lock-comment-face ((t (:foreground ,color1-2))))
    `(font-lock-negation-char-face ((t (:foreground ,text-1))))
    `(font-lock-reference-face ((t (:foreground ,red-1))))
    `(font-lock-constant-face ((t (:foreground ,color1-2))))
    `(font-lock-doc-face ((t (:foreground ,color1-2))))
    `(font-lock-function-name-face ((t (:foreground ,text-1 :bold t))))
    `(font-lock-keyword-face ((t (:bold t :foreground ,color1-1))))
    `(font-lock-string-face ((t (:foreground ,color1-1))))
    `(font-lock-type-face ((t (:foreground ,text-1))))
    `(font-lock-variable-name-face ((t (:foreground ,color1-1))))
    `(font-lock-warning-face ((t (:background ,text-1 :foreground ,color2-1))))
    `(helm-minibuffer-prompt ((t (:foreground ,color1-1))))
    `(helm-match ((t (:foreground ,color1-1))))
    `(helm-candidate-number ((t (:foreground ,color1-1))))
    `(helm-M-x-key ((t (:foreground ,color1-1 :underline t))))
    `(helm-source-header ((t (:weight bold :foreground ,color1-1))))
    `(helm-selection ((t :foreground ,highlight-1)))
    `(helm-swoop-target-line-face ((t (:background ,nil :foreground ,highlight-1))))
    `(helm-swoop-target-word-face ((t (:background ,color2-3 :foreground ,highlight-1))))
    `(helm-swoop-line-number-face ((t (:weight bold :foreground ,red-1 :background ,color2-3))))
    `(helm-swoop-target-line-block-face ((t (:foreground ,red-1 :background ,color2-3))))
    `(minibuffer-prompt ((t (:foreground ,color1-1))))
    `(highlight ((t (:background ,nil :foreground ,highlight-1))))
    `(show-paren-match ((t (:background ,text-4 :foreground ,highlight-1))))
    ;`(hl-line ((t (:background ,color2-3 :foreground ,"#cccccc"))))
    `(cursor ((t (:background ,highlight-1))))
    `(region ((t (:background ,text-3 :foreground ,highlight-1))))
    `(cua-rectangle ((t (:background ,text-3 :foreground ,highlight-1))))
    `(mode-line ((t (:background ,text-7 :foreground ,text-1))))
    `(mode-line-inactive ((t (:background ,text-7 :foreground ,text-6))))
    `(mode-line-buffer-id ((t (:foreground ,color1-1 :bold t))))
    `(helm-selection ((t (:background ,background-color :foreground ,text-1))))
    `(helm-swoop-target-word-face ((t (:background ,background-color :foreground ,text-1 :bold t))))
    `(lsp-lsp-flycheck-warning-unnecessary-face ((t (:background ,background-color :foreground ,color2-1 :underline t))))
    `(message-header-cc ((t (:foreground ,text-2))))
    `(message-header-name ((t (:foreground ,text-2))))
    `(message-header-newsgroups ((t (:foreground ,text-2))))
    `(message-header-other ((t (:foreground ,text-2))))
    `(message-header-subject ((t (:foreground ,text-2))))
    `(message-header-to ((t (:foreground ,text-2))))
    `(header-line ((t (:foreground ,text-2))))
    `(elfeed-log-date-face ((t (:background ,background-color :foreground ,text-1))))
    `(elfeed-log-debug-level-face ((t (:background ,background-color :foreground ,text-1))))
    `(elfeed-log-error-level-face ((t (:background ,background-color :foreground ,text-1))))
    `(elfeed-log-info-level-face ((t (:background ,background-color :foreground ,text-1))))
    `(elfeed-log-warn-level-face ((t (:background ,background-color :foreground ,text-1))))
    `(elfeed-search-date-face ((t (:background ,background-color :foreground ,text-1))))
    `(elfeed-search-feed-face ((t (:background ,background-color :foreground ,text-1))))
    `(elfeed-search-filter-face ((t (:background ,background-color :foreground ,text-1))))
    `(elfeed-search-last-update-face ((t (:background ,background-color :foreground ,text-1))))
    `(elfeed-search-tag-face ((t (:background ,background-color :foreground ,text-1))))
    `(elfeed-search-title-face ((t (:background ,background-color :foreground ,color1-2))))
    `(elfeed-search-unread-count-face ((t (:background ,background-color :foreground ,text-1))))
    `(elfeed-search-unread-title-face ((t (:background ,background-color :foreground ,color1-1))))
    `(magit-header-line ((t (:foreground ,color1-1))))
    `(magit-section-heading ((t (:foreground ,color1-1))))
    `(magit-branch-current ((t (:box (:line-width 1 :color ,highlight-1) :foreground ,highlight-1))))
    `(magit-branch-remote-head ((t (:box (:line-width 1 :color ,highlight-1) :foreground ,highlight-1))))
    `(magit-branch-local ((t (:foreground ,color1-1))))
    `(magit-branch-remote ((t (:foreground ,color1-1))))
    `(magit-section-highlight ((t (:background ,nil :foreground ,highlight-1))))
    `(magit-log-author ((t (:foreground ,color1-1))))
    `(magit-log-date ((t (:foreground ,color1-2))))
    `(transient-argument ((t (:foreground ,color1-1))))
    `(transient-inactive-argument ((t (:foreground ,color1-2))))
    `(transient-inactive-value ((t (:foreground ,color1-2))))
    `(magit-keyword-squash ((t (:foreground ,color1-1))))
    `(markdown-missing-link-face ((t (:foreground ,color1-1))))
    `(org-warning ((t (:foreground ,color1-1))))
    `(package-status-disabled ((t (:foreground ,color1-1))))
    `(secondary-selection ((t (:background ,color2-3 :foreground ,color2-1))))
    `(ido-incomplete-regexp ((t (:foreground ,color1-1))))
    `(helm-ff-rsync-progress ((t (:foreground ,color1-1))))
    `(dired-warning ((t (:foreground ,color1-1))))
    `(font-lock-warning-face ((t (:foreground ,color1-1))))
    `(git-commit-nonempty-second-line ((t (:foreground ,color1-1))))
    `(git-commit-overlong-summary ((t (:foreground ,color1-1))))
    `(helm-ff-rsync-progress ((t (:foreground ,color1-1))))
    `(font-lock-warning-face ((t (:foreground ,color1-1))))
    `(package-status-unsigned ((t (:foreground ,color1-1))))
    `(font-lock-warning-face ((t (:background ,green-1 :foreground ,red-1))))
    `(magit-diff-added ((t (:background ,nil :foreground ,green-3))))
    `(magit-diff-removed ((t (:background ,nil :foreground ,red-3))))
    `(magit-diff-context ((t (:background ,nil :foreground ,text-2))))
    `(magit-diff-added-highlight ((t (:background ,nil :foreground ,green-2))))
    `(magit-diff-removed-highlight ((t (:background ,nil :foreground ,red-2))))
    `(magit-diff-context-highlight ((t (:background ,nil :foreground ,text-1))))
    `(magit-diff-hunk-region ((t (:background ,background-color :foreground ,color2-1))))
    `(magit-diff-conflict-heading ((t (:background ,text-6 :foreground ,text-6))))
    `(magit-diff-file-heading ((t (:background ,text-6 :foreground ,highlight-1))))
    `(magit-diff-file-heading-selection ((t (:background ,text-6 :foreground ,highlight-1))))
    `(magit-diff-hunk-heading ((t (:background ,text-6 :foreground ,text-3))))
    `(magit-diff-hunk-heading-selection ((t (:background ,text-6 :foreground ,text-3))))
    `(magit-diff-file-heading-highlight ((t (:background ,text-6 :foreground ,highlight-1))))
    `(magit-diff-hunk-heading-highlight ((t (:background ,text-6 :foreground ,text-1))))
    `(org-block ((t (:background ,background-color :foreground ,text-2))))
    `(org-table ((t (:background ,background-color :foreground ,color2-2))))
    `(org-checkbox-statistics-todo ((t (:background ,background-color :foreground ,red-2))))
    `(org-checkbox-statistics-done ((t (:background ,background-color :foreground ,green-2))))
    `(magit-diff-whitespace-warning ((t (:background ,red-2 :foreground ,text-2))))
    `(custom-invalid ((t (:background ,red-2 :foreground ,text-2))))
    `(ido-indicator ((t (:background ,red-2 :foreground ,text-2))))
    `(org-block-begin-line ((t (:foreground ,text-5))))
    `(org-block-end-line ((t (:foreground ,text-5))))
    `(company-echo-common ((t (:foreground ,color2-1))))
    `(helm-buffer-saved-out ((t (:foreground ,color2-1))))
    `(ido-subdir ((t (:foreground ,color2-1))))
    `(ido-first-match ((t (:foreground ,highlight-1 :bold t))))
    `(ido-only-match ((t (:foreground ,highlight-1 :bold t))))
    `(whitespace-space ((t (:foreground ,text-3))))
    `(whitespace-trailing ((t (:foreground ,highlight-1 :bold t))))
    `(org-todo ((t (:foreground ,red-2 :bold t))))
    `(org-done ((t (:foreground ,green-2 :bold t))))
    `(org-agenda-structure ((t (:foreground ,text-1))))
    `(info-xref-visited ((t (:foreground ,color1-1 :underline t))))
    `(ivy-current-match ((t (:foreground ,highlight-1 :bold t))))
    `(eww-valid-certificate ((t (:foreground ,color1-1 :bold t))))
    `(org-date ((t (:foreground ,color2-1 :underline t))))
    `(org-scheduled ((t (:foreground ,text-1))))
    `(org-scheduled-today ((t (:foreground ,text-1))))
    `(org-agenda-current-time ((t (:foreground ,text-2))))
    `(org-time-grid ((t (:foreground ,text-2))))
    `(org-agenda-done ((t (:foreground ,text-3))))
    `(org-agenda-dimmed-todo-face ((t (:foreground ,text-3))))
    `(org-agenda-current-time ((t (:foreground ,text-1))))
    `(org-scheduled-previously ((t (:foreground ,red-2))))
    `(org-headline-todo ((t (:foreground ,color1-1))))
    `(org-headline-done ((t (:foreground ,color1-1))))
    `(doom-modeline-evil-normal-state ((t (:foreground ,color1-1))))
    `(doom-modeline-info ((t (:foreground ,color1-1))))
    `(doom-modeline-lsp-success ((t (:foreground ,color1-1))))
    `(org-agenda-date-today ((t (:foreground ,color1-1 :bold t))))
    `(org-agenda-clocking ((t (:foreground ,highlight-2 :background ,color2-1))))
)

;;;###autoload
(when load-file-name
     (add-to-list 'custom-theme-load-path
         (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'chiaroscuro)

;;; chiaroscuro-theme.el ends here
