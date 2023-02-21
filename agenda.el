;;; org-agenda templates
;;; Commentary:
;;; Code:

(defvar org-capture-templates)
(defvar org-agenda-files)

(setq org-capture-templates
      '(
        ("t" "Tasks" entry (file+headline "~/source/org-mode/agenda/tasks.org" "Tasks")
         "* TODO %? :task:")

        ("b" "Reading" entry (file+headline "~/source/org-mode/agenda/books.org" "Reading")
         "* TODO %? :book:")

        ("p" "Painting" entry (file+headline "~/source/org-mode/agenda/painting.org" "Painting")
         "* TODO %? :painting:")

        ("c" "Programming" entry (file+headline "~/source/org-mode/agenda/programming.org" "Programming")
         "* TODO %? :programming:")

        ("e" "Emacs" entry (file+headline "~/source/org-mode/agenda/emacs_tasks.org" "Emacs")
         "* TODO %? :emacs:")

        ("s" "Shopping List" checkitem (file+headline "~/source/org-mode/agenda/shopping_list.org" "Shopping List")
         "- [ ] %?")

        ("h" "Chores" entry (file+headline "~/source/org-mode/agenda/chores.org" "chores")
         "* TODO %? :chores:")

        ("x" "Mission" entry (file+headline "~/source/org-mode/agenda/mission.org" "Mission")
         "* TODO %? :mission:")

        ("r" "Remember" checkitem (file+headline "~/source/org-mode/agenda/remember.org" "Remember")
         "- %?")
        )
      )
(setq org-agenda-files (list "~/source/org-mode/agenda"))

;;; agenda.el ends here
