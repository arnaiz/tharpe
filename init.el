;;No splash
(setq inhibit-splash-screen t)

(setq initial-scratch-message "")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/") 

;Package management
(require 'package)
;;(add-to-list 'package-archives
;;             '("marmalade" . "http://marmalade-repo.org/packages/"))
;;(add-to-list 'package-archives
;;             '("melpa" . "http://melpa.org/packages/"))	
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/")
             t)

(package-initialize)

;;my keybindings
(define-key global-map(kbd "C-c i") 'iedit-mode)

;;Autocomplete
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

;;Yasnippet
(require 'yasnippet)
(yas-global-mode 1)

;;nyan mode
(require 'nyan-mode)
(nyan-mode)
(nyan-start-animation)
;;(setq-default nyan-wavy-trail t)

;;(require 'linum-mode)
(global-linum-mode t)

;;apperance
;;initial window width (80 + linum + right margin) and height
(when window-system (set-frame-size (selected-frame) 90 24))

;;column indicators
(setq column-number-mode t)

(require 'fill-column-indicator)
(setq-default fci-rule-column 80)
(setq fci-rule-width 1)
(add-hook 'after-change-major-mode-hook 'fci-mode)

;;set font size
(set-face-attribute 'default nil :height 130)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-tomorrow-bright)))
 '(custom-safe-themes
   (quote
    ("82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016"
     "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58"
     "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d"
     "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e"
     "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a"
     "c1fb68aa00235766461c7e31ecfc759aa2dd905899ae6d95097061faeb72f9ee"
     "1c10e946f9a22b28613196e4c02b6508970e3b34660282ec92d9a1c293ee81bb" default)
    )))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'set-goal-column 'disabled nil)
