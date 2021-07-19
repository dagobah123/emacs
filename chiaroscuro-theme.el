;;; chiaroscuro-theme.el --- Low contrast night theme

;;; Commentary:

;;; Code:

(deftheme chiaroscuro)
(let ((class '((class color) (min-colors 89)))

       (black "#000000")
       (dark-gray "#666666")
       (gray "#888888")
       (light-gray "#aaaaaa")
       (orange "#db7b00")
       (dark-orange "#ac4c09")
       (dark-brown "#5c1c00")
       (low-chroma-dark-brown "#522512")
       (lowest-chroma-dark-brown "#4b352e")
       (bright-blue "#7777ff")
       (blue "#4141c2")
       (low-chroma-blue "#6262b6")
       (dark-blue "#282877")
       (darkest-blue "#1a1d55")
       (green "#44a536")
       (red "#d23b3b")
       (brightest-red "#ff0000")
       (brightest-green "#00ff00")

;       (black "#000000")
;       (dark-gray "#222222")
;       (gray "#444444")
;       (light-gray "#777777")
;       (orange "#975500")
;       (dark-orange "#632c05")
;       (dark-brown "#1d0900")
;       (low-chroma-dark-brown "#1f0e07")
;       (lowest-chroma-dark-brown "#1f1613")
;       (bright-blue "#5555ff")
;       (blue "#313192")
;       (low-chroma-blue "#474784")
;       (dark-blue "#15153f")
;       (darkest-blue "#08091a")
;       (green "#317827")
;       (red "#a72f2f")
;       (brightest-red "#ff0000")
;       (brightest-green "#00ff00")

   )

(custom-theme-set-faces 'chiaroscuro

    `(default ((,class (:background ,black :foreground ,gray))))

    `(link ((,class (:foreground ,orange :underline t))))

    `(font-lock-builtin-face ((,class (:foreground ,orange))))
    `(font-lock-comment-face ((,class (:foreground ,dark-orange))))
    `(font-lock-negation-char-face ((,class (:foreground ,light-gray))))
    `(font-lock-reference-face ((,class (:foreground ,brightest-red))))
    `(font-lock-constant-face ((,class (:foreground ,dark-orange))))
    `(font-lock-doc-face ((,class (:foreground ,dark-orange))))
    `(font-lock-function-name-face ((,class (:foreground ,light-gray :bold t))))
    `(font-lock-keyword-face ((,class (:bold ,class :foreground ,orange))))
    `(font-lock-string-face ((,class (:foreground ,dark-orange))))
    `(font-lock-type-face ((,class (:foreground ,light-gray))))
    `(font-lock-variable-name-face ((,class (:foreground ,orange))))
    `(font-lock-warning-face ((,class (:background ,light-gray :foreground ,bright-blue))))

    `(helm-minibuffer-prompt ((,class (:foreground ,orange))))
    `(helm-match ((,class (:foreground ,orange))))
    `(helm-candidate-number ((,class (:foreground ,orange))))
    `(helm-M-x-key ((,class (:foreground ,orange :underline t))))

    `(helm-source-header ((,class (:weight bold :foreground ,orange))))
    `(helm-selection ((,class (:foreground ,bright-blue))))

    `(helm-swoop-target-line-face ((,class (:background ,dark-blue :foreground nil))))
    `(helm-swoop-target-word-face ((,class (:weight bold :foreground ,bright-blue :background ,dark-blue))))
    `(helm-swoop-line-number-face ((,class (:weight bold :foreground ,brightest-red :background ,dark-blue))))
    `(helm-swoop-target-line-block-face ((,class (:weight bold :foreground ,brightest-red :background ,dark-blue))))

    `(minibuffer-prompt ((,class (:foreground ,orange))))

    `(highlight ((,class (:background ,dark-blue :weight bold :foreground ,bright-blue))))
    `(show-paren-match ((,class (:background ,nil :foreground ,bright-blue))))

    `(hl-line ((,class (:background ,dark-blue))))
    `(cursor ((,class (:background ,bright-blue))))
    `(region ((,class (:background ,dark-brown :foreground ,orange))))
    `(mode-line ((,class (:background ,lowest-chroma-dark-brown :foreground ,light-gray))))
    `(mode-line-inactive ((,class (:background ,lowest-chroma-dark-brown :foreground ,dark-gray))))
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

    `(ido-only-match ((,class (:foreground ,bright-blue))))

    `(magit-header-line ((,class (:foreground ,orange))))
    `(magit-section-heading ((,class (:foreground ,orange))))
    `(magit-branch-current ((,class (:box (:line-width 1 :color ,bright-blue) :foreground ,bright-blue))))
    `(magit-branch-remote-head ((,class (:box (:line-width 1 :color ,bright-blue) :foreground ,bright-blue))))

    `(magit-branch-local ((,class (:foreground ,orange))))
    `(magit-branch-remote ((,class (:foreground ,orange))))
    `(magit-section-highlight ((,class (:background ,dark-blue :foreground ,bright-blue))))
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

    `(magit-diff-added ((,class (:background ,nil :foreground ,green))))
    `(magit-diff-added-highlight ((,class (:background ,darkest-blue :foreground ,green))))
    `(magit-diff-removed ((,class (:background ,nil :foreground ,red))))
    `(magit-diff-removed-highlight ((,class (:background ,darkest-blue :foreground ,red))))
    `(magit-diff-context ((,class (:foreground ,gray))))

    `(magit-diff-hunk-region ((,class (:background ,black :foreground ,bright-blue))))

    `(magit-diff-conflict-heading ((,class (:background ,dark-blue :foreground ,blue))))
    `(magit-diff-file-heading ((,class (:background ,dark-blue :foreground ,blue))))
    `(magit-diff-file-heading-selection ((,class (:background ,dark-blue :foreground ,blue))))
    `(magit-diff-hunk-heading ((,class (:background ,dark-blue :foreground ,blue))))
    `(magit-diff-hunk-heading-selection ((,class (:background ,dark-blue :foreground ,blue))))
    `(magit-diff-hunk-heading ((,class (:background ,dark-blue :foreground ,blue))))
    `(magit-diff-conflict-heading ((,class (:background ,dark-blue :foreground ,blue))))

    `(magit-diff-context-highlight ((,class (:background ,darkest-blue :foreground ,light-gray))))
    `(magit-diff-file-heading-highlight ((,class (:background ,dark-blue :foreground ,bright-blue))))
    `(magit-diff-hunk-heading-highlight ((,class (:background ,dark-blue :foreground ,bright-blue))))

    `(org-block ((,class (:background ,black :foreground ,gray))))
    `(org-table ((,class (:background ,black :foreground ,low-chroma-blue))))
    `(org-checkbox-statistics-todo ((,class (:background ,black :foreground ,red))))
    `(org-checkbox-statistics-done ((,class (:background ,black :foreground ,green))))

    `(magit-diff-whitespace-warning ((,class (:background ,red :foreground ,gray))))
  )
)

;;;###autoload
(when load-file-name
     (add-to-list 'custom-theme-load-path
         (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'chiaroscuro)

;;; chiaroscuro-theme.el ends here
