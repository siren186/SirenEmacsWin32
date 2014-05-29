(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/");����Ŀ��, ����Emacs�ҵ�molokai����

;; ��������Ϊϵͳ�Զ�����,�����ֶ��޸�
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
;;<PRE> ��������ΪEamcs�Դ����ܵ��޸�
;;------------------------------------------------------------------------------
;;  ������޸���
;;------------------------------------------------------------------------------
(setq-default cursor-type 'bar);���ù��Ϊ����,������Ϊ����,��bar�ĳ�box����
(global-hl-line-mode 1);������ǰ�༭��
(setq visible-bell t);�رճ���ʱ�ķ�����ʾ��
(global-linum-mode t);��ʾ�к�
(setq column-number-mode t);��ʾ�к�
(setq scroll-margin 3 scroll-conservatively 10000);���̿������¹���ʱ������,���Ÿ����,����3��
(setq make-backup-files nil);�ر��Զ����ݹ���
(setq auto-save-mode nil);�ر��Զ�����ģʽ
(setq auto-save-default nil);��������Ϊ#filename# ����ʱ�ļ�
(global-set-key "\r" 'align-newline-and-indent);;�Զ�����<C-j>��Ϊ<Enter>
(setq echo-keystrokes 0.1);; ������ʾ����������ʾ
(setq auto-save-mode t);�Զ�����
(mouse-avoidance-mode 'animate);��꿿�����ָ��ʱ,ָ���Զ��ƿ�
(setq frame-title-format "%b@SiRen");��������ʾ��ʽ,%b�����ڱ༭���ļ�������
(global-font-lock-mode t);�����﷨����
(auto-image-file-mode t);��ͼƬ��ʾ����
(setq speedbar-show-unknown-files t);������ʾ����Ŀ¼�Լ��ļ�
(fset 'yes-or-no-p 'y-or-n-p);��y/n����yes/no
(setq x-select-enable-clipboard t);֧���ⲿ����ճ��
(setq-default kill-whole-line t);������C-k ʱ,ͬʱɾ������.����ֻɾ���е�����,�б�������
(global-cwarn-mode 1);������ʾC\C++���ܵĴ���
(setq require-final-newline t);���ĵ���β���������
(setq c-basic-offset 4);���������ַ���
(global-set-key (kbd "RET") 'newline-and-indent);���»س�����������
(recentf-mode 1);�鿴����򿪵��ļ�
(global-set-key "\C-\M-l" 'textmate-select-line);ѡ�е�ǰ��
(setq default-major-mode 'org-mode);Ĭ�Ͻ���org-mode
(global-set-key "\M- " 'set-mark-command);�Դ��ı�ǿ�ݼ�C-@ʵ��̫�Ѱ���, �ĳ�M-SPC�ȽϷ���
(server-start) ;M-X server-start
;;(transient-mark-mode t);����ѡ�еĲ���
;;(global-visual-line-mode 1);�Ƿ���ʾ���з�,1��ʾ,0����ʾ
;;(setq auto-save-interval 100);����100���Զ�����
;;(setq default-fill-column 80);��ʾ80�оͻ���
;;(setq kill-ring-max 200);�趨ɾ�������¼Ϊ200�����Է����Ժ����޻ָ�
;;(set-default-font "Lucida Console-10");����������ֺ�
;;(global-set-key "\M-/" 'hippie-expand);�Զ���ȫ
;;(set-cursor-color "white");ָ����ɫ����Ϊ��ɫ
;;(set-mouse-color "white");�����ɫ����Ϊ��ɫ
;;(setq default-directory "~/doc");����Ĭ�ϴ�·��,�������Windows��, ��runemacs.exe���͵������ݷ�ʽ, ���������е�λ�øĵ�����
;;(setq bookmark-save-flag 1);ÿ��������ǩ��ʱ�򶼱�����ǩ�ļ�������ֻ�����˳� Emacs ʱ����
;;(add-hook 'c-mode-common-hook 'hs-minor-mode);�����۵�
;;------------------------------------------------------------------------------
;;  ������޸�
;;------------------------------------------------------------------------------
;;��ֹ���ֹ�������
(setq mouse-wheel-scroll-amount '(3 ((shift) . 1)((control))); һ�ι�3��
mouse-wheel-progressive-speed nil
scroll-step 1)

;;�������ĺ�Ӣ������
(set-face-attribute
 'default nil :font "Consolas 12")
(dolist (charset '(kana han symbol cjk-misc bopomofo))
  (set-fontset-font (frame-parameter nil 'font)
                    charset
                    (font-spec :family "������" :size 18)))

;;����TAB����
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)

;;����ƥ��ʱ��ʾ����һ�ߵ����ţ������Ƿ��˵�������һ�����š�
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;;���ø�����Ϣ
(setq user-full-name "SiRen")
(setq user-mail-address "rookie2@163.com")

;; �� mode-line ����ʾʱ�䡣
(setq display-time-24hr-format t)
(setq display-time-day-and-date t)
(setq display-time-use-mail-icon t)
(setq display-time-interval 10)

;; shell �д� ansi-color ֧�֡�
(add-hook 'diary-hook 'appt-make-list)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;;�Զ���ȫ����
(electric-indent-mode t)
(electric-pair-mode t)
(electric-layout-mode t)

;; org-mode
;;(setq org-hide-leading-stars t);ֻ������ʾ���һ������㼶�� *
;;(define-key global-map "\C-ca" 'org-agenda);C-c a �����ճ̱�
(setq org-log-done 'time);��������������ʱ�������ѡ note������ע��
(setq org-src-fontify-natively t);org-mode�������,��ô�о�һ����û��
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
;; ����TODO��DONE�ļ���״̬
;;(setq org-todo-keywords
;;'((sequence "TODO" "FEEDBACK" "VERIFY" "|" "DONE" "DELEGATED")))
;;(setq org-todo-keywords
;;'((sequence "TODO(t)" "|" "DONE(d)")
;;(sequence "REPORT(r)" "BUG(b)" "KNOWNCAUSE(k)" "|" "FIXED(f)")
;;(sequence "|" "CANCELED(c)")))

;;�������Ļ���
;;(set-terminal-coding-system 'chinese-iso-8bit)
;;(set-keyboard-coding-system 'chinese-iso-8bit)
;;(set-language-environment 'chinese-gb)
;;(set-clipboard-coding-system 'chinese-iso-8bit)
;;(set-selection-coding-system 'cn-gb-2312)
;;(setq locale-coding-system 'chinese-iso-8bit)
;;(setq current-language-environment "Chinese-GB")


;;����C��C++������
(add-hook 'c-mode-hook '(lambda () (c-set-style "k&r")))
(add-hook 'c++-mode-hook '(lambda () (c-set-style "k&r")))

;;��������ʱ����λ��
;;(setq default-frame-alist
;; '((height . 50)(width . 100)(menubar-lines . 0)(tool-bar-lines . 0)))
;;
;;</PRE> ��������ΪEamcs�Դ����ܵ��޸�
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
;;</PRE> ��������Ϊ�Զ��庯��
;;
;;Windows������ʱ���
(defun w32-restore-frame ()
"Restore a minimized frame"
(interactive)
(w32-send-sys-command 61728))
(defun w32-maximize-frame ()
"Maximize the current frame"
(interactive)
(w32-send-sys-command 61488))
(w32-maximize-frame)

;;���Ų�ȫ,ֻ���˻����ŵ�, ��Ϊ��������,��������Emacs�Դ��Ķ�������,ֻ�����뻨����ʱ,�����Զ�չ��,���Ա����������
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

;;������������%ʱ,��ת����֮ƥ�����һ��������ȥ
(global-set-key "%" 'match-paren)
(defun match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
	((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))

;;��shell��ִ��exitʱ,ֱ���˳�shell
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

;;����2���,ͷ�ļ����ļ������Զ���һ���»���,�����水�س�,���Դ�����ļ���
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
;; �ⲻ��һ���ð취��Ҳ���԰������ص� c-mode-hook or c++-mode-hook �С�
(setq wcy-c/c++-hightligh-included-files-timer (run-with-idle-timer 2 t 'wcy-c/c++-hightligh-included-files))

;;
;;</PRE> ��������Ϊ�Զ��庯��
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
;;</PRE> ���������ǲ��������
;;
(add-to-list 'load-path "~/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
;;(global-auto-complete-mode t)

;(require 'zone-settings)
;(require 'zone);������������ʱ��
;(zone-when-idle 180);������������ʱ��,�����Ͼ�һ��

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
(require 'unicad);�Զ�ʶ���ļ�����
(require 'sr-speedbar)
(require 'xcscope)
(require 'auto-header)
(require 'yasnippet-bundle)
(yas/global-mode 1)
(require 'textmate)
(textmate-mode)

(require 'browse-kill-ring);kill���ĺܶණ��, �Ͳ���M-yһ��һ������, ����M-y������һ��buffer, ��ʾ���е�kill-ring
;;(global-set-key [(control c)(k)] 'browse-kill-ring)
(browse-kill-ring-default-keybindings)
(require 'highlight-parentheses);�������ƥ������
(add-hook 'c++-mode-hook 'highlight-parentheses-mode)
(add-hook 'c-mode-hook 'highlight-parentheses-mode)

(require 'tabbar)
(tabbar-mode)
;;����tabbar���
;;����Ĭ������: ����, ������ǰ��(�Ҳ�֪��ǰ��ɫ�Ǹ����)���߶�[0.1~1]
(set-face-attribute 'tabbar-default-face nil
					:family "Consolas"
					:background "#00313F"
					:foreground "#FFFFFF"
					:height 0.2
					)
;;������߰�ť��ۣ�����ߴ�С����ɫ
(set-face-attribute 'tabbar-button-face nil
					:inherit 'tabbar-default
					:box '(:line-width 1 :color "#00313F")
					:background "#00313F"
					)
;;���õ�ǰtab��ۣ���ɫ�����壬����С����ɫ
(set-face-attribute 'tabbar-selected-face nil
					:inherit 'tabbar-default
					:foreground "white"
					:background "#004334"
					:box '(:line-width 1 :color "DarkGoldenrod")
					:overline "black"
					:underline "black"
					:weight 'bold
					)
;;���÷ǵ�ǰtab��ۣ�����С����ɫ
(set-face-attribute 'tabbar-unselected-face nil
					:inherit 'tabbar-default
					:box '(:line-width 1 :color "#00313F")
					:background "#00313F"
					)

;; highlight-symbol
(add-to-list 'load-path "~/.emacs.d/")
(require 'highlight-symbol)
(require 'auto-highlight-symbol)
(auto-highlight-symbol-mode);ʹ��������Ϊ����highlight-symbol-mode�ÿ�Щ
(add-hook 'c++-mode-hook 'auto-highlight-symbol-mode)
(add-hook 'c-mode-hook 'auto-highlight-symbol-mode)

;;���β���ʱ,�ܹ���ʾ����������,��C-x r C-x
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

;;w3m������(��������)
(add-to-list 'load-path "~/.emacs.d/windows_emacs_w3m/w3m-lisp") ;;w3m����Ҫ��lisp�ļ�������·��
(add-to-list 'exec-path "~/.emacs.d/windows_emacs_w3m/w3m") ;;ָ��w3m��ִ�г������ڵ�ִ��·��
(require 'w3m-load)
(setq w3m-use-favicon nil)
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-use-cookies t)
(setq w3m-home-page "http://www.baidu.com")

;;��ʾͼƬ
(setq w3m-show-graphic-icons-in-header-line t)
(setq w3m-show-graphic-icons-in-mode-line t)
(setq w3m-default-display-inline-images t)
