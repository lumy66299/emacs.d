;; key設定の初期化


;; "C-m"にnewline-add-indentを割り当てる
(global-set-key (kbd "C-m") 'newline-and-indent)

;; 折り返しトグルコマンド
(global-set-key (kbd "C-c l") 'toggle-truncate-lines)

;; "C-t"でウィンドウを切り替える
(global-set-key (kbd "C-t") 'other-window)

;; "C-x ?"をヘルプにする
(global-set-key (kbd "C-x ?") 'help-command)

;; "入力されるキーシーケンスを置き換える
(keyboard-translate ?\C-h ?\C-?)