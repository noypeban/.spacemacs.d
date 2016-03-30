;;skk init file.

;;Emacs起動時のinput methodをddskkにする
(setq default-input-method "japanese-skk")

;;補完
(setq skk-dcomp-activate t)

;;辞書ファイルの指定
(setq skk-extra-jisyo-file-list
      (list '("~/.spacemacs.d/SKK/SKK-JISYO.jinmei"
              "~/.spacemacs.d/SKK/SKK-JISYO.L")))

;; 変換候補がひとつしかない場合は確定する
(setq skk-kakutei-when-unique-candidate t)

;;文脈に応じた自動モード切り替え
(add-hook 'skk-load-hook
          (lambda ()
            (require 'context-skk)
            (require 'skk-gadget)))