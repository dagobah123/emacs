;;; org-agenda templates

(setq org-capture-templates
      '(("t" "Tasks" entry (file+headline "~/source/org-mode/agenda/tasks.org" "Tasks")
         "* TODO %? :task:")

        ("p" "Painting" entry (file+headline "~/source/org-mode/agenda/painting.org" "Painting")
         "* TODO %? :painting:")

        ("e" "Emacs" entry (file+headline "~/source/org-mode/agenda/emacs_tasks.org" "Emacs")
         "* TODO %? :emacs:")

        ("r" "Reading List" entry (file+headline "~/source/org-mode/agenda/reading_list.org" "Reading List")
         "* TODO %? :book:")

        ("s" "Shopping List" checkitem (file+headline "~/source/org-mode/agenda/shopping_list.org" "Shopping List")
         "- [ ] %?")

        ("h" "Haushalt" entry (file+headline "~/source/org-mode/agenda/haushalt.org" "Haushalt")
         "* TODO %? :haushalt:")

        ("b" "Business" entry (file+headline "~/source/org-mode/agenda/business.org" "Business")
         "* TODO %? :business:")

        ("j" "Journal" entry (file+headline "~/source/org-mode/agenda/journal.org" "Journal")
         "* %?\n")

        ("l" "Log" entry (file+headline "~/source/org-mode/agenda/log.org" "Log")
         "* %?\nEntered on %U\n  %i\n  %a")))

(setq org-agenda-files (list "~/source/org-mode/agenda"))
