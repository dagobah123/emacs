;;; agenda.el --- org mode agenda files
;;; Commentary:
;;; Code:

(defvar org-capture-templates)
(defvar org-agenda-files)

(setq org-capture-templates
      '(
        ("t" "Tasks" entry (file+headline "~/source/org-mode/agenda/tasks.org" "Tasks")
         "* TODO %?")

        ("r" "Remember" entry (file+headline "~/source/org-mode/agenda/remember.org" "Remember")
         "* %?")

        ("d" "Dropbox" entry (file+headline "~/Dropbox/org-mode/dropbox.org" "Dropbox")
         "* TODO %?")
        )
      )
(setq org-agenda-files (list "~/source/org-mode/agenda" "~/source/org-mode/notes/general/data.org"))

;;; agenda.el ends here
