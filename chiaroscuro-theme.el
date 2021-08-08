;;; chiaroscuro-theme.el --- Low contrast night theme

;;; Commentary:

;;; Code:

(deftheme chiaroscuro)
(let ((class '((class color) (min-colors 89)))

       (white-yellow "#fff3b6")

       (black "#000000")

       (light-gray "#aaaaaa")
       (gray "#888888")
       (light-middle-gray "#666666")
       (middle-gray "#555555")
       (middle-dark-dark-gray "#444444")
       (middle-dark-gray "#333333")
       (dark-gray "#212121")
       (very-dark-gray "#111111")

       (orange "#db7b00")
       (dark-orange "#c7580b")
       (dark-brown "#933b15")

       (bright-blue "#586cef")
       (low-chroma-blue "#6262b6")
       (dark-blue "#282877")
       (darkest-blue "#1a1d55")

       (green "#44a536")
       (green-gray "#577c52")
       (red "#d23b3b")
       (red-gray "#ae6767")
       (brightest-red "#ff0000")
       (brightest-green "#00ff00")

    )

(custom-theme-set-faces 'chiaroscuro

    `(default ((,class (:background ,black :foreground ,gray))))

    `(link ((,class (:foreground ,bright-blue :underline t))))

    `(font-lock-builtin-face ((,class (:foreground ,orange))))
    `(font-lock-comment-face ((,class (:foreground ,dark-orange))))
    `(font-lock-negation-char-face ((,class (:foreground ,light-gray))))
    `(font-lock-reference-face ((,class (:foreground ,brightest-red))))
    `(font-lock-constant-face ((,class (:foreground ,dark-orange))))
    `(font-lock-doc-face ((,class (:foreground ,dark-orange))))
    `(font-lock-function-name-face ((,class (:foreground ,light-gray :bold t))))
    `(font-lock-keyword-face ((,class (:bold ,class :foreground ,orange))))
    `(font-lock-string-face ((,class (:foreground ,orange))))
    `(font-lock-type-face ((,class (:foreground ,light-gray))))
    `(font-lock-variable-name-face ((,class (:foreground ,orange))))
    `(font-lock-warning-face ((,class (:background ,light-gray :foreground ,bright-blue))))

    `(helm-minibuffer-prompt ((,class (:foreground ,orange))))
    `(helm-match ((,class (:foreground ,orange))))
    `(helm-candidate-number ((,class (:foreground ,orange))))
    `(helm-M-x-key ((,class (:foreground ,orange :underline t))))

    `(helm-source-header ((,class (:weight bold :foreground ,orange))))
    `(helm-selection ((,class :foreground ,white-yellow)))

    `(helm-swoop-target-line-face ((,class (:background ,nil :foreground ,white-yellow))))
    `(helm-swoop-target-word-face ((,class (:background ,dark-blue :foreground ,white-yellow))))
    `(helm-swoop-line-number-face ((,class (:weight bold :foreground ,brightest-red :background ,dark-blue))))
    `(helm-swoop-target-line-block-face ((,class (:foreground ,brightest-red :background ,dark-blue))))

    `(minibuffer-prompt ((,class (:foreground ,orange))))

    `(highlight ((,class (:background ,nil :foreground ,white-yellow))))
    `(show-paren-match ((,class (:background ,middle-dark-dark-gray :foreground ,white-yellow))))

    ;`(hl-line ((,class (:background ,dark-blue :foreground ,"#cccccc"))))
    `(cursor ((,class (:background ,white-yellow))))
    `(region ((,class (:background ,light-middle-gray :foreground ,white-yellow))))
    `(cua-rectangle ((,class (:background ,light-middle-gray :foreground ,white-yellow))))

    `(mode-line ((,class (:background ,very-dark-gray :foreground ,light-gray))))
    `(mode-line-inactive ((,class (:background ,very-dark-gray :foreground ,dark-gray))))
    `(mode-line-buffer-id ((,class (:foreground ,orange :bold t))))

    `(helm-selection ((,class (:background ,black :foreground ,light-gray))))
    `(helm-swoop-target-word-face ((,class (:background ,black :foreground ,light-gray :bold t))))

    `(lsp-lsp-flycheck-warning-unnecessary-face ((,class (:background ,black :foreground ,bright-blue :underline t))))

    `(message-header-cc ((,class (:foreground ,gray))))
    `(message-header-name ((,class (:foreground ,gray))))
    `(message-header-newsgroups ((,class (:foreground ,gray))))
    `(message-header-other ((,class (:foreground ,gray))))
    `(message-header-subject ((,class (:foreground ,gray))))
    `(message-header-to ((,class (:foreground ,gray))))

    `(header-line ((,class (:foreground ,gray))))

    `(elfeed-log-date-face ((,class (:background ,black :foreground ,light-gray))))
    `(elfeed-log-debug-level-face ((,class (:background ,black :foreground ,light-gray))))
    `(elfeed-log-error-level-face ((,class (:background ,black :foreground ,light-gray))))
    `(elfeed-log-info-level-face ((,class (:background ,black :foreground ,light-gray))))
    `(elfeed-log-warn-level-face ((,class (:background ,black :foreground ,light-gray))))
    `(elfeed-search-date-face ((,class (:background ,black :foreground ,light-gray))))
    `(elfeed-search-feed-face ((,class (:background ,black :foreground ,light-gray))))
    `(elfeed-search-filter-face ((,class (:background ,black :foreground ,light-gray))))
    `(elfeed-search-last-update-face ((,class (:background ,black :foreground ,light-gray))))
    `(elfeed-search-tag-face ((,class (:background ,black :foreground ,light-gray))))
    `(elfeed-search-title-face ((,class (:background ,black :foreground ,dark-orange))))
    `(elfeed-search-unread-count-face ((,class (:background ,black :foreground ,light-gray))))
    `(elfeed-search-unread-title-face ((,class (:background ,black :foreground ,orange))))

    `(magit-header-line ((,class (:foreground ,orange))))
    `(magit-section-heading ((,class (:foreground ,orange))))
    `(magit-branch-current ((,class (:box (:line-width 1 :color ,white-yellow) :foreground ,white-yellow))))
    `(magit-branch-remote-head ((,class (:box (:line-width 1 :color ,white-yellow) :foreground ,white-yellow))))

    `(magit-branch-local ((,class (:foreground ,orange))))
    `(magit-branch-remote ((,class (:foreground ,orange))))
    `(magit-section-highlight ((,class (:background ,nil :foreground ,white-yellow))))
    `(magit-log-author ((,class (:foreground ,orange))))
    `(magit-log-date ((,class (:foreground ,dark-orange))))

    `(transient-argument ((,class (:foreground ,orange))))
    `(transient-inactive-argument ((,class (:foreground ,dark-orange))))
    `(transient-inactive-value ((,class (:foreground ,dark-orange))))

    `(magit-keyword-squash ((,class (:foreground ,orange))))
    `(markdown-missing-link-face ((,class (:foreground ,orange))))
    `(org-warning ((,class (:foreground ,orange))))
    `(package-status-disabled ((,class (:foreground ,orange))))

    `(secondary-selection ((,class (:background ,dark-blue :foreground ,bright-blue))))

    `(ido-incomplete-regexp ((,class (:foreground ,orange))))
    `(helm-ff-rsync-progress ((,class (:foreground ,orange))))
    `(dired-warning ((,class (:foreground ,orange))))
    `(font-lock-warning-face ((,class (:foreground ,orange))))
    `(git-commit-nonempty-second-line ((,class (:foreground ,orange))))
    `(git-commit-overlong-summary ((,class (:foreground ,orange))))
    `(helm-ff-rsync-progress ((,class (:foreground ,orange))))
    `(font-lock-warning-face ((,class (:foreground ,orange))))
    `(package-status-unsigned ((,class (:foreground ,orange))))
    `(font-lock-warning-face ((,class (:background ,brightest-green :foreground ,brightest-red))))

    `(magit-diff-added ((,class (:background ,nil :foreground ,green-gray))))
    `(magit-diff-removed ((,class (:background ,nil :foreground ,red-gray))))
    `(magit-diff-context ((,class (:background ,nil :foreground ,gray))))

    `(magit-diff-added-highlight ((,class (:background ,nil :foreground ,green))))
    `(magit-diff-removed-highlight ((,class (:background ,nil :foreground ,red))))
    `(magit-diff-context-highlight ((,class (:background ,nil :foreground ,light-gray))))

    `(magit-diff-hunk-region ((,class (:background ,black :foreground ,bright-blue))))

    `(magit-diff-conflict-heading ((,class (:background ,dark-gray :foreground ,dark-gray))))
    `(magit-diff-file-heading ((,class (:background ,dark-gray :foreground ,white-yellow))))
    `(magit-diff-file-heading-selection ((,class (:background ,dark-gray :foreground ,white-yellow))))
    `(magit-diff-hunk-heading ((,class (:background ,dark-gray :foreground ,dark-gray))))
    `(magit-diff-hunk-heading-selection ((,class (:background ,dark-gray :foreground ,dark-gray))))

    `(magit-diff-file-heading-highlight ((,class (:background ,dark-gray :foreground ,white-yellow))))
    `(magit-diff-hunk-heading-highlight ((,class (:background ,dark-gray :foreground ,light-gray))))

    `(org-block ((,class (:background ,black :foreground ,gray))))
    `(org-table ((,class (:background ,black :foreground ,low-chroma-blue))))
    `(org-checkbox-statistics-todo ((,class (:background ,black :foreground ,red))))
    `(org-checkbox-statistics-done ((,class (:background ,black :foreground ,green))))

    `(magit-diff-whitespace-warning ((,class (:background ,red :foreground ,gray))))
    `(custom-invalid ((,class (:background ,red :foreground ,gray))))
    `(ido-indicator ((,class (:background ,red :foreground ,gray))))

    `(org-block-begin-line ((,class (:foreground ,middle-dark-gray))))
    `(org-block-end-line ((,class (:foreground ,middle-dark-gray))))

    `(company-echo-common ((,class (:foreground ,bright-blue))))
    `(helm-buffer-saved-out ((,class (:foreground ,bright-blue))))
    `(ido-subdir ((,class (:foreground ,bright-blue))))
    `(ido-first-match ((,class (:foreground ,white-yellow :bold t))))
    `(ido-only-match ((,class (:foreground ,white-yellow :bold t))))

    `(whitespace-space ((,class (:foreground ,middle-gray))))
    `(whitespace-trailing ((,class (:foreground ,white-yellow :bold t))))

    `(org-todo ((,class (:foreground ,red :bold t))))
    `(org-done ((,class (:foreground ,green :bold t))))

    `(org-agenda-structure ((,class (:foreground ,light-gray))))

    `(info-xref-visited ((,class (:foreground ,orange :underline t))))

    `(ivy-current-match ((,class (:foreground ,white-yellow :bold t))))
    `(eww-valid-certificate ((,class (:foreground ,orange :bold t))))

    ;(set-frame-font "DejaVu Sans Mono-30" nil t)
    ;(set-frame-font "STIXGeneral-20" nil t)
    ;(set-frame-font "FreeSerif-20" nil t)
    ;(set-frame-font "FreeMono" nil t)
    ;(set-frame-font "Uroob-20" nil t)
    ;(set-frame-font "Comfortaa-20" nil t)
  )
)

;;;###autoload
(when load-file-name
     (add-to-list 'custom-theme-load-path
         (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'chiaroscuro)

;;; chiaroscuro-theme.el ends here
