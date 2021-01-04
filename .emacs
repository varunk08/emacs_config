
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#a1efe4" "#fcfcfa"])
 '(ansi-term-color-vector
   [unspecified "#2d2a2e" "#ff6188" "#a9dc76" "#ffd866" "#78dce8" "#ab9df2" "#a1efe4" "#fcfcfa"] t)
 '(custom-enabled-themes (quote (doom-monokai-classic)))
 '(custom-safe-themes
   (quote
    ("d74c5485d42ca4b7f3092e50db687600d0e16006d8fa335c69cf4f379dbd0eee" "be9645aaa8c11f76a10bcf36aaf83f54f4587ced1b9b679b55639c87404e2499" "711efe8b1233f2cf52f338fd7f15ce11c836d0b6240a18fffffc2cbd5bfe61b0" "2dff5f0b44a9e6c8644b2159414af72261e38686072e063aa66ee98a2faecf0e" "5846b39f2171d620c45ee31409350c1ccaddebd3f88ac19894ae15db9ef23035" default)))
 '(inhibit-default-init t)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(package-selected-packages
   (quote
    (highlight-indent-guides undo-tree tabbar-ruler rainbow-delimiters doom-themes dracula-theme org monokai-pro-theme)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Ubuntu Mono" :foundry "DAMA" :slant normal :weight normal :height 151 :width normal)))))

(add-to-list 'load-path "~/.emacs.d/ergoemacs-mode")
(require 'ergoemacs-mode)
(setq ergoemacs-theme nil) ;; Uses Standard Ergoemacs keyboard theme
(setq ergoemacs-keyboard-layout "us") ;; Assumes QWERTY keyboard layout
(ergoemacs-mode 1)

;; Projectile enable and key setup.
(require 'projectile)
(projectile-mode +1)
(global-set-key (kbd "C-p") 'projectile-command-map)

;; Stop the ringing
(setq ring-bell-function 'ignore)

;; Remove the pesky tool bar with icons on the top
(tool-bar-mode -1)

(desktop-save-mode)

(show-paren-mode 1)

;; CC mode. C++ indentation.
(setq-default c-basic-offset 4)

;; Highlight the current line
(global-hl-line-mode +1)

;; Backup file storing
(setq backup-directory-alist '(("." . "~/.emacs.d/backup")))


;; Tab and White space mode settings.
(progn
  (setq-default indent-tabs-mode nil)
  ;; make tab key always call a indent command.
  (setq-default tab-always-indent t)
 ;; Make whitespace-mode with very basic background coloring for whitespaces.
  ;; http://ergoemacs.org/emacs/whitespace-mode.html
  (setq whitespace-style (quote (face spaces tabs newline space-mark tab-mark)))

  ;; Make whitespace-mode and whitespace-newline-mode use “¶” for end of line char and “▷” for tab.
  (setq whitespace-display-mappings
        ;; all numbers are unicode codepoint in decimal. e.g. (insert-char 182 1)
        '(
          (space-mark 32 [183] [46]) ; SPACE 32 「 」, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
          (newline-mark 10 [182 10]) ; LINE FEED,
          (tab-mark 9 [9655 9] [92 9]) ; tab
          )))

