;;; chiaroscuro-theme.el --- Low contrast night theme

;;; Commentary:

;;; Code:

(defvar my-white-yellow "")
(defvar my-yellow "")
(defvar my-background "")
(defvar my-light-gray "")
(defvar my-gray "")
(defvar my-middle-gray "")
(defvar my-middle-dark-gray "")
(defvar middle-dark-dark-gray "")
(defvar middle-dark-gray "")
(defvar dark-gray "")
(defvar my-darkest-gray "")
(defvar orange-default "")
(defvar dark-orange "")
(defvar dark-brown "")
(defvar bright-blue "")
(defvar low-chroma-blue "")
(defvar dark-blue "")
(defvar darkest-blue "")
(defvar green-default "")
(defvar green-gray "")
(defvar red-default "")
(defvar red-gray "")
(defvar brightest-red "")
(defvar brightest-green "")

(if (eq CHIAROSCURO_INDEX 0)
    (progn
        (setq my-white-yellow "#fff3b6")
        (setq my-yellow "#dabc14")
        (setq my-background "#000000")
        (setq my-light-gray "#aaaaaa")
        (setq my-gray "#888888")
        (setq my-middle-dark-gray "#666666")
        (setq my-middle-gray "#555555")
        (setq middle-dark-dark-gray "#444444")
        (setq middle-dark-gray "#333333")
        (setq dark-gray "#212121")
        (setq my-darkest-gray "#111111")
        (setq orange-default "#db7b00")
        (setq dark-orange "#c7580b")
        (setq dark-brown "#933b15")
        (setq bright-blue "#586cef")
        (setq low-chroma-blue "#6262b6")
        (setq dark-blue "#282877")
        (setq darkest-blue "#1a1d55")
        (setq green-default "#44a536")
        (setq green-gray "#577c52")
        (setq red-default "#d23b3b")
        (setq red-gray "#ae6767")
        (setq brightest-red "#ff0000")
        (setq brightest-green "#00ff00")
        (setq CHIAROSCURO_INDEX 1)
    )
    (progn
        (setq my-white-yellow "#cfc594")
        (setq my-yellow "#dabc14")
        (setq my-background "#333333")
        (setq my-light-gray "#aaaaaa")
        (setq my-gray "#888888")
        (setq my-middle-gray "#666666")
        (setq my-middle-gray "#555555")
        (setq middle-dark-dark-gray "#444444")
        (setq middle-dark-gray "#383838")
        (setq dark-gray "#363636")
        (setq my-darkest-gray "#2f2f2f")
        (setq orange-default "#b76600")
        (setq dark-orange "#a2531b")
        (setq dark-brown "#783c23")
        (setq bright-blue "#545c94")
        (setq low-chroma-blue "#6262b6")
        (setq dark-blue "#282877")
        (setq darkest-blue "#1a1d55")
        (setq green-default "#35812a")
        (setq green-gray "#577c52")
        (setq red-default "#a84d4d")
        (setq red-gray "#ae6767")
        (setq brightest-red "#872727")
        (setq brightest-green "#2d752d")
        (setq CHIAROSCURO_INDEX 0)
    )
)

(deftheme chiaroscuro)

(custom-theme-set-faces 'chiaroscuro

    `(default ((t (:background ,my-background :foreground ,my-gray))))
    `(link ((t (:foreground ,bright-blue :underline t))))
    `(font-lock-builtin-face ((t (:foreground ,orange-default))))
    `(font-lock-comment-face ((t (:foreground ,dark-orange))))
    `(font-lock-negation-char-face ((t (:foreground ,my-light-gray))))
    `(font-lock-reference-face ((t (:foreground ,brightest-red))))
    `(font-lock-constant-face ((t (:foreground ,dark-orange))))
    `(font-lock-doc-face ((t (:foreground ,dark-orange))))
    `(font-lock-function-name-face ((t (:foreground ,my-light-gray :bold t))))
    `(font-lock-keyword-face ((t (:bold t :foreground ,orange-default))))
    `(font-lock-string-face ((t (:foreground ,orange-default))))
    `(font-lock-type-face ((t (:foreground ,my-light-gray))))
    `(font-lock-variable-name-face ((t (:foreground ,orange-default))))
    `(font-lock-warning-face ((t (:background ,my-light-gray :foreground ,bright-blue))))
    `(helm-minibuffer-prompt ((t (:foreground ,orange-default))))
    `(helm-match ((t (:foreground ,orange-default))))
    `(helm-candidate-number ((t (:foreground ,orange-default))))
    `(helm-M-x-key ((t (:foreground ,orange-default :underline t))))
    `(helm-source-header ((t (:weight bold :foreground ,orange-default))))
    `(helm-selection ((t :foreground ,my-white-yellow)))
    `(helm-swoop-target-line-face ((t (:background ,nil :foreground ,my-white-yellow))))
    `(helm-swoop-target-word-face ((t (:background ,dark-blue :foreground ,my-white-yellow))))
    `(helm-swoop-line-number-face ((t (:weight bold :foreground ,brightest-red :background ,dark-blue))))
    `(helm-swoop-target-line-block-face ((t (:foreground ,brightest-red :background ,dark-blue))))
    `(minibuffer-prompt ((t (:foreground ,orange-default))))
    `(highlight ((t (:background ,nil :foreground ,my-white-yellow))))
    `(show-paren-match ((t (:background ,middle-dark-dark-gray :foreground ,my-white-yellow))))
    ;`(hl-line ((t (:background ,dark-blue :foreground ,"#cccccc"))))
    `(cursor ((t (:background ,my-white-yellow))))
    `(region ((t (:background ,my-middle-gray :foreground ,my-white-yellow))))
    `(cua-rectangle ((t (:background ,my-middle-gray :foreground ,my-white-yellow))))
    `(mode-line ((t (:background ,my-darkest-gray :foreground ,my-light-gray))))
    `(mode-line-inactive ((t (:background ,my-darkest-gray :foreground ,dark-gray))))
    `(mode-line-buffer-id ((t (:foreground ,orange-default :bold t))))
    `(helm-selection ((t (:background ,my-background :foreground ,my-light-gray))))
    `(helm-swoop-target-word-face ((t (:background ,my-background :foreground ,my-light-gray :bold t))))
    `(lsp-lsp-flycheck-warning-unnecessary-face ((t (:background ,my-background :foreground ,bright-blue :underline t))))
    `(message-header-cc ((t (:foreground ,my-gray))))
    `(message-header-name ((t (:foreground ,my-gray))))
    `(message-header-newsgroups ((t (:foreground ,my-gray))))
    `(message-header-other ((t (:foreground ,my-gray))))
    `(message-header-subject ((t (:foreground ,my-gray))))
    `(message-header-to ((t (:foreground ,my-gray))))
    `(header-line ((t (:foreground ,my-gray))))
    `(elfeed-log-date-face ((t (:background ,my-background :foreground ,my-light-gray))))
    `(elfeed-log-debug-level-face ((t (:background ,my-background :foreground ,my-light-gray))))
    `(elfeed-log-error-level-face ((t (:background ,my-background :foreground ,my-light-gray))))
    `(elfeed-log-info-level-face ((t (:background ,my-background :foreground ,my-light-gray))))
    `(elfeed-log-warn-level-face ((t (:background ,my-background :foreground ,my-light-gray))))
    `(elfeed-search-date-face ((t (:background ,my-background :foreground ,my-light-gray))))
    `(elfeed-search-feed-face ((t (:background ,my-background :foreground ,my-light-gray))))
    `(elfeed-search-filter-face ((t (:background ,my-background :foreground ,my-light-gray))))
    `(elfeed-search-last-update-face ((t (:background ,my-background :foreground ,my-light-gray))))
    `(elfeed-search-tag-face ((t (:background ,my-background :foreground ,my-light-gray))))
    `(elfeed-search-title-face ((t (:background ,my-background :foreground ,dark-orange))))
    `(elfeed-search-unread-count-face ((t (:background ,my-background :foreground ,my-light-gray))))
    `(elfeed-search-unread-title-face ((t (:background ,my-background :foreground ,orange-default))))
    `(magit-header-line ((t (:foreground ,orange-default))))
    `(magit-section-heading ((t (:foreground ,orange-default))))
    `(magit-branch-current ((t (:box (:line-width 1 :color ,my-white-yellow) :foreground ,my-white-yellow))))
    `(magit-branch-remote-head ((t (:box (:line-width 1 :color ,my-white-yellow) :foreground ,my-white-yellow))))
    `(magit-branch-local ((t (:foreground ,orange-default))))
    `(magit-branch-remote ((t (:foreground ,orange-default))))
    `(magit-section-highlight ((t (:background ,nil :foreground ,my-white-yellow))))
    `(magit-log-author ((t (:foreground ,orange-default))))
    `(magit-log-date ((t (:foreground ,dark-orange))))
    `(transient-argument ((t (:foreground ,orange-default))))
    `(transient-inactive-argument ((t (:foreground ,dark-orange))))
    `(transient-inactive-value ((t (:foreground ,dark-orange))))
    `(magit-keyword-squash ((t (:foreground ,orange-default))))
    `(markdown-missing-link-face ((t (:foreground ,orange-default))))
    `(org-warning ((t (:foreground ,orange-default))))
    `(package-status-disabled ((t (:foreground ,orange-default))))
    `(secondary-selection ((t (:background ,dark-blue :foreground ,bright-blue))))
    `(ido-incomplete-regexp ((t (:foreground ,orange-default))))
    `(helm-ff-rsync-progress ((t (:foreground ,orange-default))))
    `(dired-warning ((t (:foreground ,orange-default))))
    `(font-lock-warning-face ((t (:foreground ,orange-default))))
    `(git-commit-nonempty-second-line ((t (:foreground ,orange-default))))
    `(git-commit-overlong-summary ((t (:foreground ,orange-default))))
    `(helm-ff-rsync-progress ((t (:foreground ,orange-default))))
    `(font-lock-warning-face ((t (:foreground ,orange-default))))
    `(package-status-unsigned ((t (:foreground ,orange-default))))
    `(font-lock-warning-face ((t (:background ,brightest-green :foreground ,brightest-red))))
    `(magit-diff-added ((t (:background ,nil :foreground ,green-gray))))
    `(magit-diff-removed ((t (:background ,nil :foreground ,red-gray))))
    `(magit-diff-context ((t (:background ,nil :foreground ,my-gray))))
    `(magit-diff-added-highlight ((t (:background ,nil :foreground ,green-default))))
    `(magit-diff-removed-highlight ((t (:background ,nil :foreground ,red-default))))
    `(magit-diff-context-highlight ((t (:background ,nil :foreground ,my-light-gray))))
    `(magit-diff-hunk-region ((t (:background ,my-background :foreground ,bright-blue))))
    `(magit-diff-conflict-heading ((t (:background ,dark-gray :foreground ,dark-gray))))
    `(magit-diff-file-heading ((t (:background ,dark-gray :foreground ,my-white-yellow))))
    `(magit-diff-file-heading-selection ((t (:background ,dark-gray :foreground ,my-white-yellow))))
    `(magit-diff-hunk-heading ((t (:background ,dark-gray :foreground ,my-middle-gray))))
    `(magit-diff-hunk-heading-selection ((t (:background ,dark-gray :foreground ,my-middle-gray))))
    `(magit-diff-file-heading-highlight ((t (:background ,dark-gray :foreground ,my-white-yellow))))
    `(magit-diff-hunk-heading-highlight ((t (:background ,dark-gray :foreground ,my-light-gray))))
    `(org-block ((t (:background ,my-background :foreground ,my-gray))))
    `(org-table ((t (:background ,my-background :foreground ,low-chroma-blue))))
    `(org-checkbox-statistics-todo ((t (:background ,my-background :foreground ,red-default))))
    `(org-checkbox-statistics-done ((t (:background ,my-background :foreground ,green-default))))
    `(magit-diff-whitespace-warning ((t (:background ,red-default :foreground ,my-gray))))
    `(custom-invalid ((t (:background ,red-default :foreground ,my-gray))))
    `(ido-indicator ((t (:background ,red-default :foreground ,my-gray))))
    `(org-block-begin-line ((t (:foreground ,middle-dark-gray))))
    `(org-block-end-line ((t (:foreground ,middle-dark-gray))))
    `(company-echo-common ((t (:foreground ,bright-blue))))
    `(helm-buffer-saved-out ((t (:foreground ,bright-blue))))
    `(ido-subdir ((t (:foreground ,bright-blue))))
    `(ido-first-match ((t (:foreground ,my-white-yellow :bold t))))
    `(ido-only-match ((t (:foreground ,my-white-yellow :bold t))))
    `(whitespace-space ((t (:foreground ,my-middle-gray))))
    `(whitespace-trailing ((t (:foreground ,my-white-yellow :bold t))))
    `(org-todo ((t (:foreground ,red-default :bold t))))
    `(org-done ((t (:foreground ,green-default :bold t))))
    `(org-agenda-structure ((t (:foreground ,my-light-gray))))
    `(info-xref-visited ((t (:foreground ,orange-default :underline t))))
    `(ivy-current-match ((t (:foreground ,my-white-yellow :bold t))))
    `(eww-valid-certificate ((t (:foreground ,orange-default :bold t))))
    `(org-date ((t (:foreground ,bright-blue :underline t))))
    `(org-scheduled ((t (:foreground ,my-light-gray))))
    `(org-scheduled-today ((t (:foreground ,my-light-gray))))
    `(org-agenda-current-time ((t (:foreground ,my-gray))))
    `(org-time-grid ((t (:foreground ,my-gray))))
    `(org-agenda-done ((t (:foreground ,my-middle-gray))))
    `(org-agenda-dimmed-todo-face ((t (:foreground ,my-middle-gray))))
    `(org-agenda-current-time ((t (:foreground ,my-light-gray))))
    `(org-scheduled-previously ((t (:foreground ,red-default))))
    `(org-headline-todo ((t (:foreground ,orange-default))))
    `(org-headline-done ((t (:foreground ,orange-default))))
    `(doom-modeline-evil-normal-state ((t (:foreground ,orange-default))))
    `(doom-modeline-info ((t (:foreground ,orange-default))))
    `(doom-modeline-lsp-success ((t (:foreground ,orange-default))))
    `(org-agenda-date-today ((t (:foreground ,orange-default :bold t))))
    `(org-agenda-clocking ((t (:foreground ,my-yellow :background ,bright-blue))))
)

;;;###autoload
(when load-file-name
     (add-to-list 'custom-theme-load-path
         (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'chiaroscuro)

;;; chiaroscuro-theme.el ends here
