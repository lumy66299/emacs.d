;; direx
(require 'direx)
(require 'direx-project)
(push '(direx:direx-mode :position left :width 40 :dedicated t)
      popwin:special-display-config)

(defun my/dired-jump ()
  (interactive)
  (cond (current-prefix-arg
	 (dired-jump))
	((not (one-window-p))
	 (or (ignore-errors
	       (direx-project:jump-to-project-root) t)
	     (direx:jump-to-directory)))
	(t
	 (or (ignore-errors
	       (direx-project:jump-to-project-root-other-window) t)
	     (direx:jump-to-directory-other-window)))))
