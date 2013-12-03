;; frame設定の初期化

;; カラム番号の表示
(column-number-mode t)

;; 行番号を表示させない
(line-number-mode 0)

;; ファイルサイズを表示
(size-indication-mode t)

;; タイトルバーにファイルのフルパスを表示
(setq frame-title-format "%f")

;; 行番号を常に表示する
(global-linum-mode t)

;; メニューバーを消す
(menu-bar-mode 0)
;; M-x menu-bar-modeで、メニューバーを表示/非表示

;; ツールバーを消す
(tool-bar-mode 0)
;; 上と同様

;; リージョン内の行数と文字数おモードラインに表示する
(defun count-lines-and-chars ()
 (if mark-active
      (format "%d lines,%d chars "
	      (count-lines (region-beginning) (region-end))
	      (- (region-end) (region-beginning)))
    ;; これだとエコーエリアがちらつく
    ;;(count-lines-region (region-beginning) (region-end))
    ""))

(add-to-list 'default-mode-line-format
	     '(:eval (count-lines-and-chars)))
