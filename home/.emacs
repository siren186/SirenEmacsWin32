(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/");这句的目的, 是让Emacs找到molokai主题

;; 以下内容为系统自动生成,请勿手动修改
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2d3743" "#ff4242" "#74af68" "#dbdb95" "#34cae2" "#008b8b" "#00ede1" "#e1e1e0"])
 '(auto-compression-mode t nil (jka-compr))
 '(case-fold-search t)
 '(column-number-mode t)
 '(current-language-environment "Chinese-GB")
 '(custom-enabled-themes (quote (molokai)))
 '(custom-safe-themes (quote ("f52c9375a4a374f691b6dba186a99507269df2d94d8feca1f00661dc6c5b1b7f" "9fd20670758db15cc4d0b4442a74543888d2e445646b25f2755c65dcd6f1504b" default)))
 '(default-input-method "chinese-py-punct")
 '(display-time-mode t)
 '(ede-project-directories (quote ("e:/Pro/tmp/myproject/include" "e:/Pro/tmp/myproject/src" "e:/Pro/tmp/myproject")))
 '(fci-rule-color monokai-bg-1)
 '(fringe-mode 0 nil (fringe))
 '(inhibit-startup-screen t)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(tool-bar-mode nil)
 '(tooltip-mode nil)
 '(uniquify-buffer-name-style nil nil (uniquify))
 '(vc-annotate-background monokai-bg)
 '(vc-annotate-color-map (quote ((20 . monokai-fg-1) (40 . monokai-bg+2) (60 . monokai-red) (80 . monokai-red+1) (100 . monokai-orange) (120 . monokai-orange+1) (140 . monokai-green) (160 . monokai-green+1) (180 . monokai-yellow) (200 . monokai-yellow+1) (220 . monokai-blue) (240 . monokai-blue+1) (260 . monokai-purple) (280 . monokai-purple+1) (300 . monokai-cyan) (320 . monokai-cyan+1) (340 . monokai-magenta) (360 . monokai-magenta+1))))
 '(vc-annotate-very-old-color monokai-magenta))

;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
;;<PRE> 以下内容为Eamcs自带功能的修改
;;------------------------------------------------------------------------------
;;  单语句修改区
;;------------------------------------------------------------------------------
(setq-default cursor-type 'bar);设置光标为竖线,若想光标为方块,则将bar改成box即可
(global-hl-line-mode 1);高亮当前编辑行
(setq visible-bell t);关闭出错时的蜂鸣提示声
(global-linum-mode t);显示行号
(setq column-number-mode t);显示列号
(setq scroll-margin 3 scroll-conservatively 10000);键盘控制上下滚动时更连贯,看着更舒服,保留3行
(setq make-backup-files nil);关闭自动备份功能
(setq auto-save-mode nil);关闭自动保存模式
(setq auto-save-default nil);不生成名为#filename# 的临时文件
(global-set-key "\r" 'align-newline-and-indent);;自动缩进<C-j>变为<Enter>
(setq echo-keystrokes 0.1);; 尽快显示按键序列提示
(setq auto-save-mode t);自动保存
(mouse-avoidance-mode 'animate);光标靠近鼠标指针时,指针自动移开
(setq frame-title-format "%b@SiRen");标题栏显示格式,%b是正在编辑的文件的名字
(global-font-lock-mode t);进行语法加亮
(auto-image-file-mode t);打开图片显示功能
(setq speedbar-show-unknown-files t);可以显示所有目录以及文件
(fset 'yes-or-no-p 'y-or-n-p);以y/n代替yes/no
(setq x-select-enable-clipboard t);支持外部复制粘贴
(setq-default kill-whole-line t);在行首C-k 时,同时删除该行.否则只删除行的内容,行本身还存在
(global-cwarn-mode 1);高亮显示C\C++可能的错误
(setq require-final-newline t);在文档结尾处插入空行
(setq c-basic-offset 4);设置缩进字符数
(global-set-key (kbd "RET") 'newline-and-indent);按下回车后新行缩进
(recentf-mode 1);查看最近打开的文件
(global-set-key "\C-\M-l" 'textmate-select-line);选中当前行
(setq default-major-mode 'org-mode);默认进入org-mode
(global-set-key "\M- " 'set-mark-command);自带的标记快捷键C-@实在太难按了, 改成M-SPC比较方便
(server-start) ;M-X server-start
;;(transient-mark-mode t);高亮选中的部分
;;(global-visual-line-mode 1);是否显示折行符,1显示,0不显示
;;(setq auto-save-interval 100);击键100次自动保存
;;(setq default-fill-column 80);显示80列就换行
;;(setq kill-ring-max 200);设定删除保存记录为200，可以方便以后无限恢复
;;(set-default-font "Lucida Console-10");设置字体和字号
;;(global-set-key "\M-/" 'hippie-expand);自动补全
;;(set-cursor-color "white");指针颜色设置为白色
;;(set-mouse-color "white");鼠标颜色设置为白色
;;(setq default-directory "~/doc");设置默认打开路径,如果是在Windows下, 将runemacs.exe发送到桌面快捷方式, 将其属性中的位置改掉就行
;;(setq bookmark-save-flag 1);每当设置书签的时候都保存书签文件，否则只在你退出 Emacs 时保存
;;(add-hook 'c-mode-common-hook 'hs-minor-mode);代码折叠
;;------------------------------------------------------------------------------
;;  多语句修改
;;------------------------------------------------------------------------------
;;防止滚轮滚动过快
(setq mouse-wheel-scroll-amount '(3 ((shift) . 1)((control))); 一次滚3行
mouse-wheel-progressive-speed nil
scroll-step 1)

;;设置中文和英文字体
(set-face-attribute
 'default nil :font "Consolas 12")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "新宋体" :size 18)))

;;设置TAB键宽
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)

;;括号匹配时显示另外一边的括号，而不是烦人的跳到另一个括号。
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;设置个人信息
(setq user-full-name "SiRen")
(setq user-mail-address "rookie2@163.com")

;; 在 mode-line 上显示时间。
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)
(setq display-time-interval 10)

;; shell 中打开 ansi-color 支持。
(add-hook 'diary-hook 'appt-make-list)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;自动补全括号
(electric-indent-mode t)
(electric-pair-mode t)
(electric-layout-mode t)

;; org-mode
;;(setq org-hide-leading-stars t);只高亮显示最后一个代表层级的 *
;;(define-key global-map "\C-ca" 'org-agenda);C-c a 进入日程表
(setq org-log-done 'time);给已完成事项打上时间戳。可选 note，附加注释
(setq org-src-fontify-natively t);org-mode代码高亮,怎么感觉一点用没有
;;iimage mode
(autoload 'iimage-mode "iimage" "Support Inline image minor mode." t)
(autoload 'turn-on-iimage-mode "iimage" "Turn on Inline image minor mode." t)
(defun org-toggle-iimage-in-org ()
  "display images in your org file"
  (interactive)
  (if (face-underline-p 'org-link)
      (set-face-underline-p 'org-link nil)
      (set-face-underline-p 'org-link t))
  (iimage-mode))
;; 设置TODO和DONE的几个状态
;;(setq org-todo-keywords
;;'((sequence "TODO" "FEEDBACK" "VERIFY" "|" "DONE" "DELEGATED")))
;;(setq org-todo-keywords
;;'((sequence "TODO(t)" "|" "DONE(d)")
;;(sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
;;(sequence "|" "CANCELED(c)")))

;;配置中文环境
;;(set-terminal-coding-system 'chinese-iso-8bit)
;;(set-keyboard-coding-system 'chinese-iso-8bit)
;;(set-language-environment 'chinese-gb)
;;(set-clipboard-coding-system 'chinese-iso-8bit)
;;(set-selection-coding-system 'cn-gb-2312)
;;(setq locale-coding-system 'chinese-iso-8bit)
;;(setq current-language-environment "Chinese-GB")


;;设置C和C++代码风格
(add-hook 'c-mode-hook '(lambda () (c-set-style "k&r")))
(add-hook 'c++-mode-hook '(lambda () (c-set-style "k&r")))

;;设置启动时窗口位置
;;(setq default-frame-alist
;; '((height . 50)(width . 100)(menubar-lines . 0)(tool-bar-lines . 0)))
;;
;;</PRE> 以上内容为Eamcs自带功能的修改
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
;;</PRE> 以下内容为自定义函数
;;
;;Windows下启动时最大化
(defun w32-restore-frame ()
"Restore a minimized frame"
(interactive)
(w32-send-sys-command 61728))
(defun w32-maximize-frame ()
"Maximize the current frame"
(interactive)
(w32-send-sys-command 61488))
(w32-maximize-frame)

;;括号补全,只改了花括号的, 因为除它以外,其它几个Emacs自带的都能满足,只是输入花括号时,我想自动展开,所以保留以下语句
(defun my-c-mode-auto-pair ()
  (interactive)
  (make-local-variable 'skeleton-pair-alist)
  (setq skeleton-pair-alist  '(
;;			       (?` ?` _ "''")
;;			       (?\( _ ")")
;;			       (?\[ _ "]")
			       (?{ \n > _ \n ?} >)))
  (setq skeleton-pair t)
;;  (local-set-key (kbd "(") 'skeleton-pair-insert-maybe)
  (local-set-key (kbd "{") 'skeleton-pair-insert-maybe))
;;  (local-set-key (kbd "`") 'skeleton-pair-insert-maybe)
;;  (local-set-key (kbd "[") 'skeleton-pair-insert-maybe))
(add-hook 'c-mode-common-hook 'my-c-mode-auto-pair)

;;在括号上输入%时,跳转到与之匹配的另一半括号上去
(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))

;;在shell中执行exit时,直接退出shell
(add-hook 'shell-mode-hook 'wcy-shell-mode-hook-func)
(defun wcy-shell-mode-hook-func  ()
  (set-process-sentinel (get-buffer-process (current-buffer))
                            #'wcy-shell-mode-kill-buffer-on-exit)
      )
(defun wcy-shell-mode-kill-buffer-on-exit (process state)
  (message "%s" state)
  (if (or
       (string-match "exited abnormally with code.*" state)
       (string-match "finished" state))
      (kill-buffer (current-buffer))))

;;发呆2秒后,头文件的文件名称自动加一个下划线,在上面按回车,可以打开这个文件。
(defvar wcy-c/c++-hightligh-included-files-key-map nil)
(if wcy-c/c++-hightligh-included-files-key-map
    nil
  (setq wcy-c/c++-hightligh-included-files-key-map (make-sparse-keymap))
  (define-key wcy-c/c++-hightligh-included-files-key-map (kbd "<RET>") 'find-file-at-point))
(defun wcy-c/c++-hightligh-included-files ()
  (interactive)
  (when (or (eq major-mode 'c-mode)
            (eq major-mode 'c++-mode))
    (save-excursion
      (goto-char (point-min))
      ;; remove all overlay first
      (mapc (lambda (ov) (if (overlay-get ov 'wcy-c/c++-hightligh-included-files)
                             (delete-overlay ov)))
            (overlays-in (point-min) (point-max)))
      (while (re-search-forward "^#include[ \t]+[\"<]\\(.*\\)[\">]" nil t nil)
        (let* ((begin  (match-beginning 1))
               (end (match-end 1))
               (ov (make-overlay begin end)))
          (overlay-put ov 'wcy-c/c++-hightligh-included-files t)
          (overlay-put ov 'keymap wcy-c/c++-hightligh-included-files-key-map)
          (overlay-put ov 'face 'underline))))))
;; 这不是一个好办法，也可以把它加载到 c-mode-hook or c++-mode-hook 中。
(setq wcy-c/c++-hightligh-included-files-timer (run-with-idle-timer 2 t 'wcy-c/c++-hightligh-included-files))

;;
;;</PRE> 以上内容为自定义函数
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
;;</PRE> 以下内容是插件的配置
;;
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;(global-auto-complete-mode t)

;(require 'zone-settings)
;(require 'zone);设置屏保出现时间
;(zone-when-idle 180);设置屏保出现时间,需结合上句一起

(require 'cedet)
(global-ede-mode t)
(require 'semantic)
(add-to-list 'load-path "~/.emacs.d/plugins/ecb-2.40")
;;(require 'ecb)

;; smart complitions
(require 'semantic/ia)
(setq-mode-local c-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))
(setq-mode-local c++-mode semanticdb-find-default-throttle
                 '(project unloaded system recursive))

;; TAGS Menu
(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/plugins")
(require 'unicad);自动识别文件编码
(require 'sr-speedbar)
(require 'xcscope)
(require 'auto-header)
(require 'yasnippet-bundle)
(yas/global-mode 1)
(require 'textmate)
(textmate-mode)

(require 'browse-kill-ring);kill掉的很多东西, 就不用M-y一个一个找了, 按下M-y后会出现一个buffer, 显示所有的kill-ring
;;(global-set-key [(control c)(k)] 'browse-kill-ring)
(browse-kill-ring-default-keybindings)
(require 'highlight-parentheses);渐变高亮匹配括号
(add-hook 'c++-mode-hook 'highlight-parentheses-mode)
(add-hook 'c-mode-hook 'highlight-parentheses-mode)

(require 'tabbar)
(tabbar-mode)
;;设置tabbar外观
;;设置默认主题: 字体, 背景和前景(我不知道前景色是干嘛的)，高度[0.1~1]
(set-face-attribute 'tabbar-default-face nil
					:family "Consolas"
					:background "#00313F"
					:foreground "#FFFFFF"
					:height 0.2
					)
;;设置左边按钮外观：外框框边大小和颜色
(set-face-attribute 'tabbar-button-face nil
					:inherit 'tabbar-default
					:box '(:line-width 1 :color "#00313F")
					:background "#00313F"
					)
;;设置当前tab外观：颜色，字体，外框大小和颜色
(set-face-attribute 'tabbar-selected-face nil
					:inherit 'tabbar-default
					:foreground "white"
					:background "#004334"
					:box '(:line-width 1 :color "DarkGoldenrod")
					:overline "black"
					:underline "black"
					:weight 'bold
					)
;;设置非当前tab外观：外框大小和颜色
(set-face-attribute 'tabbar-unselected-face nil
					:inherit 'tabbar-default
					:box '(:line-width 1 :color "#00313F")
					:background "#00313F"
					)

;; highlight-symbol
(add-to-list 'load-path "~/.emacs.d/")
(require 'highlight-symbol)
(require 'auto-highlight-symbol)
(auto-highlight-symbol-mode);使用它是因为它比highlight-symbol-mode好看些
(add-hook 'c++-mode-hook 'auto-highlight-symbol-mode)
(add-hook 'c-mode-hook 'auto-highlight-symbol-mode)

;;矩形操作时,能够显示出矩形区域,如C-x r C-x
(require 'rect-mark)
;; Support for marking a rectangle of text with highlighting.
(define-key ctl-x-map "r\C-@" 'rm-set-mark)
(define-key ctl-x-map [?r ?\C-\ ] 'rm-set-mark)
(define-key ctl-x-map "r\C-x" 'rm-exchange-point-and-mark)
(define-key ctl-x-map "r\C-w" 'rm-kill-region)
(define-key ctl-x-map "r\M-w" 'rm-kill-ring-save)
(define-key global-map [S-down-mouse-1] 'rm-mouse-drag-region)
(autoload 'rm-set-mark "rect-mark"
  "Set mark for rectangle." t)
(autoload 'rm-exchange-point-and-mark "rect-mark"
  "Exchange point and mark for rectangle." t)
(autoload 'rm-kill-region "rect-mark"
  "Kill a rectangular region and save it in the kill ring." t)
(autoload 'rm-kill-ring-save "rect-mark"
  "Copy a rectangular region to the kill ring." t)
(autoload 'rm-mouse-drag-region "rect-mark"
  "Drag out a rectangular region with the mouse." t)

;;w3m配置项(用于上网)
(add-to-list 'load-path "~/.emacs.d/windows_emacs_w3m/w3m-lisp") ;;w3m所需要的lisp文件，所在路径
(add-to-list 'exec-path "~/.emacs.d/windows_emacs_w3m/w3m") ;;指定w3m可执行程序，所在的执行路径
(require 'w3m-load)
(setq w3m-use-favicon nil)
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-use-cookies t)
(setq w3m-home-page "http://www.baidu.com")

;;显示图片
(setq w3m-show-graphic-icons-in-header-line t)
(setq w3m-show-graphic-icons-in-mode-line t)
(setq w3m-default-display-inline-images t)
