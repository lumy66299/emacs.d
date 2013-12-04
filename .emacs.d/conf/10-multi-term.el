;; multi-termの設定
(when (require 'multi-term nil t)
  ;; 使用するシェルを指定
  (setq multi-term-program "/usr/bin/bash")
  ;; utf-8に
  (setq locale-coding-system 'utf-8)

  ;; termに奪われたくないキー
  (add-to-list 'term-unbind-key-list '"C-o")
  (add-to-list 'term-unbind-key-list '"C-t")

  ;; term 内での文字削除、ペーストを有効にする
  (add-hook 'term-mode-hook
	    '(lambda ()
	       (define-key term-raw-map (kbd "C-h") 'term-send-backspace)
	       (define-key term-raw-map (kbd "C-y") 'term-paste)
	       )
	    )
  )
