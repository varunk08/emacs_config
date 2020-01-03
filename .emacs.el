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
    (cmake-mode cpp-auto-include glsl-mode rust-mode json-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 113 :width normal)))))
(add-hook 'rust-mode-hook
          (lambda () (setq indent-tabs-mode nil)))
(setq visible-bell 'top-bottom)
(setq column-number-mode 1)
(progn
  ;; make indentation commands use space only (never tab character)
  (setq-default indent-tabs-mode nil)
  ;; emacs 23.1 to 26, default to t
  ;; if indent-tabs-mode is t, it means it may use tab, resulting mixed space and tab
)
(setq-default tab-width 4)
;;(autoload 'hlsl-mode "hlsl-mode" nil t)
;;(add-to-list 'auto-mode-alist '("\\.hlsl\\'" . hlsl-mode))
(add-to-list 'load-path "~/.emacs.d/hlsl-mode")
(require 'hlsl-mode)
(desktop-save-mode 1)
