;; auto-completeの設定
(when (require 'auto-complete-config nil t)
  (add-to-list 'ac-dictionary-directories
	       "~/.emacs.d/elpa/auto-complete-20131128.233/dict")
  (ac-config-default))
  