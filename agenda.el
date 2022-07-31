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

        ("h" "Haushalt" entry (file+headline "~/source/org-mode/agenda/haushalt.org" "Haushalt")
         "* TODO %? :haushalt:")

        ("x" "Business" entry (file+headline "~/source/org-mode/agenda/business.org" "Business")
         "* TODO %? :business:")

        ("j" "Journal" entry (file+headline "~/source/org-mode/agenda/journal.org" "Journal")
         "* %?\n")

        ("l" "Log" entry (file+headline "~/source/org-mode/agenda/log.org" "Log")
         "* %?\nEntered on %U\n  %i\n  %a")

        ("v" "Event" entry (file+headline "~/source/org-mode/agenda/events.org" "Event")
         "* TODO %? :event:")
        )
      )
(setq org-agenda-files (list "~/source/org-mode/agenda"))

;;; agenda.el ends here
