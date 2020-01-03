(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)
(package-refresh-contents)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (ergoemacs-mode ggtags helm-gtags helm irony cmake-mode cpp-auto-include glsl-mode rust-mode json-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 113 :width normal)))))
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))

;; Alarm mode.
(setq visible-bell 'top-bottom)

;; Column number displayed.
(setq column-number-mode 1)

;; Tab mode.
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq tab-width 4)

;;(autoload 'hlsl-mode "hlsl-mode" nil t)
;;(add-to-list 'auto-mode-alist '("\\.hlsl\\'" . hlsl-mode))
(add-to-list 'load-path "~/.emacs.d/hlsl-mode")
(require 'hlsl-mode)

;; Save desktop on exit
(desktop-save-mode 1)

;; Ergoemacs setup. https://ergoemacs.github.io/
(require 'ergoemacs-mode)
(setq ergoemacs-theme nul) ;; Uses standard ergoemacs keyboard theme.
(setq ergoemacs-keyboard-layout "us") ;; assumes QWERTY keyboard layout.
(ergoemacs-mode 1)
