;;; chiaroscuro-theme.el --- Low contrast night theme

;;; Commentary:

;;; Code:

(deftheme chiaroscuro)
(let ((class '((class color) (min-colors 89)))

       ;(variable "#000000")

    )

(custom-theme-set-faces 'chiaroscuro

    `(default ((,class (:background ,"#000000" :foreground ,"#444444"))))

    `(link ((,class (:foreground ,"#975500" :underline t))))

    `(font-lock-builtin-face ((,class (:foreground ,"#975500"))))
    `(font-lock-comment-face ((,class (:foreground ,"#632c05"))))
    `(font-lock-negation-char-face ((,class (:foreground ,"#555555"))))
    `(font-lock-reference-face ((,class (:foreground ,"#ff0000"))))
    `(font-lock-constant-face ((,class (:foreground ,"#632c05"))))
    `(font-lock-doc-face ((,class (:foreground ,"#632c05"))))
    `(font-lock-function-name-face ((,class (:foreground ,"#777777" :bold t))))
    `(font-lock-keyword-face ((,class (:bold ,class :foreground ,"#975500"))))
    `(font-lock-string-face ((,class (:foreground ,"#632c05"))))
    `(font-lock-type-face ((,class (:foreground ,"#777777"))))
    `(font-lock-variable-name-face ((,class (:foreground ,"#975500"))))
    `(font-lock-warning-face ((,class (:background ,"#555555" :foreground ,"#5555ff"))))

    `(helm-minibuffer-prompt ((,class (:foreground ,"#975500"))))
    `(helm-match ((,class (:foreground ,"#975500"))))
    `(helm-candidate-number ((,class (:foreground ,"#975500"))))
    `(helm-M-x-key ((,class (:foreground ,"#975500" :underline t))))

    `(helm-source-header ((,class (:weight bold :foreground ,"#975500"))))
    `(helm-selection ((,class (:foreground ,"#5555ff"))))

    `(helm-swoop-target-line-face ((,class (:background "#15153f" :foreground nil))))
    `(helm-swoop-target-word-face ((,class (:weight bold :foreground "#5555ff" :background "#15153f"))))
    `(helm-swoop-line-number-face ((,class (:weight bold :foreground "#ff0000" :background "#15153f"))))
    `(helm-swoop-target-line-block-face ((,class (:weight bold :foreground "#ff0000" :background "#15153f"))))

    `(minibuffer-prompt ((,class (:foreground ,"#975500"))))

    `(highlight ((,class (:background ,"#15153f" :weight bold :foreground "#5555ff"))))
    `(show-paren-match ((,class (:background ,nil :foreground "#5555ff"))))

    `(hl-line ((,class (:background ,"#15153f"))))
    `(cursor ((,class (:background ,"#5555ff"))))
    `(region ((,class (:background ,"#1d0900" :foreground ,"#975500"))))
    `(mode-line ((,class (:background ,"#1f0e07" :foreground ,"#555555"))))
    `(mode-line-inactive ((,class (:background ,"#1f1613" :foreground ,"#555555"))))
    `(helm-selection ((,class (:background ,"#000000" :foreground ,"#555555"))))
    `(helm-swoop-target-word-face ((,class (:background ,"#000000" :foreground ,"#555555" :bold t))))

    `(lsp-lsp-flycheck-warning-unnecessary-face ((,class (:background ,"#000000" :foreground ,"#5555ff" :underline t))))

    `(message-header-cc ((,class (:foreground ,"#444444"))))
    `(message-header-name ((,class (:foreground ,"#444444"))))
    `(message-header-newsgroups ((,class (:foreground ,"#444444"))))
    `(message-header-other ((,class (:foreground ,"#444444"))))
    `(message-header-subject ((,class (:foreground ,"#444444"))))
    `(message-header-to ((,class (:foreground ,"#444444"))))

    `(header-line ((,class (:foreground ,"#444444"))))

    `(elfeed-log-date-face ((,class (:background ,"#000000" :foreground ,"#555555"))))
    `(elfeed-log-debug-level-face ((,class (:background ,"#000000" :foreground ,"#555555"))))
    `(elfeed-log-error-level-face ((,class (:background ,"#000000" :foreground ,"#555555"))))
    `(elfeed-log-info-level-face ((,class (:background ,"#000000" :foreground ,"#555555"))))
    `(elfeed-log-warn-level-face ((,class (:background ,"#000000" :foreground ,"#555555"))))
    `(elfeed-search-date-face ((,class (:background ,"#000000" :foreground ,"#555555"))))
    `(elfeed-search-feed-face ((,class (:background ,"#000000" :foreground ,"#555555"))))
    `(elfeed-search-filter-face ((,class (:background ,"#000000" :foreground ,"#555555"))))
    `(elfeed-search-last-update-face ((,class (:background ,"#000000" :foreground ,"#555555"))))
    `(elfeed-search-tag-face ((,class (:background ,"#000000" :foreground ,"#555555"))))
    `(elfeed-search-title-face ((,class (:background ,"#000000" :foreground ,"#632c05"))))
    `(elfeed-search-unread-count-face ((,class (:background ,"#000000" :foreground ,"#555555"))))
    `(elfeed-search-unread-title-face ((,class (:background ,"#000000" :foreground ,"#975500"))))

    `(ido-only-match ((,class (:foreground ,"#5555ff"))))

    `(magit-header-line ((,class (:foreground ,"#975500"))))
    `(magit-section-heading ((,class (:foreground ,"#975500"))))
    `(magit-branch-current ((,class (:box (:line-width 1 :color ,"#5555ff") :foreground ,"#5555ff"))))
    `(magit-branch-remote-head ((,class (:box (:line-width 1 :color ,"#5555ff") :foreground ,"#5555ff"))))

    `(magit-branch-local ((,class (:foreground ,"#975500"))))
    `(magit-branch-remote ((,class (:foreground ,"#975500"))))
    `(magit-section-highlight ((,class (:background ,"#15153f" :foreground ,"#5555ff"))))
    `(magit-log-author ((,class (:foreground ,"#975500"))))
    `(magit-log-date ((,class (:foreground ,"#632c05"))))

    `(transient-argument ((,class (:foreground ,"#975500"))))
    `(transient-inactive-argument ((,class (:foreground ,"#632c05"))))
    `(transient-inactive-value ((,class (:foreground ,"#632c05"))))


    `(magit-keyword-squash ((,class (:foreground ,"#975500"))))
    `(markdown-missing-link-face ((,class (:foreground ,"#975500"))))
    `(org-warning ((,class (:foreground ,"#975500"))))
    `(package-status-disabled ((,class (:foreground ,"#975500"))))

    `(secondary-selection ((,class (:background ,"#15153f" :foreground ,"#5555ff"))))

    `(ido-incomplete-regexp ((,class (:foreground ,"#975500"))))
    `(helm-ff-rsync-progress ((,class (:foreground ,"#975500"))))
    `(dired-warning ((,class (:foreground ,"#975500"))))
    `(font-lock-warning-face ((,class (:foreground ,"#975500"))))
    `(git-commit-nonempty-second-line ((,class (:foreground ,"#975500"))))
    `(git-commit-overlong-summary ((,class (:foreground ,"#975500"))))
    `(helm-ff-rsync-progress ((,class (:foreground ,"#975500"))))
    `(font-lock-warning-face ((,class (:foreground ,"#975500"))))
    `(package-status-unsigned ((,class (:foreground ,"#975500"))))
    `(font-lock-warning-face ((,class (:background ,"#00ff00" :foreground ,"#ff0000"))))

    `(magit-diff-added ((,class (:background ,nil :foreground ,"#317827"))))
    `(magit-diff-added-highlight ((,class (:background ,"#08091a" :foreground ,"#317827"))))
    `(magit-diff-removed ((,class (:background ,nil :foreground ,"#a72f2f"))))
    `(magit-diff-removed-highlight ((,class (:background ,"#08091a" :foreground ,"#a72f2f"))))
    `(magit-diff-context ((,class (:foreground ,"#444444"))))

    `(magit-diff-hunk-region ((,class (:background ,"#000000" :foreground ,"#5555ff"))))

    `(magit-diff-conflict-heading ((,class (:background ,"#15153f" :foreground ,"#313192"))))
    `(magit-diff-file-heading ((,class (:background ,"#15153f" :foreground ,"#313192"))))
    `(magit-diff-file-heading-selection ((,class (:background ,"#15153f" :foreground ,"#313192"))))
    `(magit-diff-hunk-heading ((,class (:background ,"#15153f" :foreground ,"#313192"))))
    `(magit-diff-hunk-heading-selection ((,class (:background ,"#15153f" :foreground ,"#313192"))))
    `(magit-diff-hunk-heading ((,class (:background ,"#15153f" :foreground ,"#313192"))))
    `(magit-diff-conflict-heading ((,class (:background ,"#15153f" :foreground ,"#313192"))))

    `(magit-diff-context-highlight ((,class (:background ,"#08091a" :foreground ,"#666666"))))
    `(magit-diff-file-heading-highlight ((,class (:background ,"#15153f" :foreground ,"#5555ff"))))
    `(magit-diff-hunk-heading-highlight ((,class (:background ,"#15153f" :foreground ,"#5555ff"))))

    `(org-block ((,class (:background ,"#000000" :foreground ,"#444444"))))
    `(org-table ((,class (:background ,"#000000" :foreground ,"#474784"))))
    `(org-checkbox-statistics-todo ((,class (:background ,"#000000" :foreground ,"#a72f2f"))))
    `(org-checkbox-statistics-done ((,class (:background ,"#000000" :foreground ,"#317827"))))

  )
)

;;;###autoload
(when load-file-name
     (add-to-list 'custom-theme-load-path
         (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'chiaroscuro)

;;; chiaroscuro-theme.el ends here
