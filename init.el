(setq gc-cons-threshold 400000000)

;;; Begin initialization
;; Turn off mouse interface early in startup to avoid momentary display

;; (when window-system
  (menu-bar-mode -1)
  (tool-bar-mode -1)
  (scroll-bar-mode -1)
(tooltip-mode -1)
;; )

(setq inhibit-startup-message t)
(setq initial-scratch-message "")
(setq package-enable-at-startup nil) ; tells emacs not to load any packages before starting up

;;; Set up package
(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                           ("org"       . "http://orgmode.org/elpa/")
                           ("melpa"     . "https://melpa.org/packages/")
                           ("marmalade" . "http://marmalade-repo.org/packages/")
                         )))
(package-initialize) ; guess what this one does ?

;;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; From use-package README
(eval-when-compile
  (require 'use-package))
(use-package diminish
             :ensure t)

(load-file "~/.emacs.d/config.elc")

(setq gc-cons-threshold 800000)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (esup yasnippet-snippets which-key use-package treemacs-projectile treemacs-evil telephone-line solarized-theme rjsx-mode prettier-js org-bullets git-gutter-fringe general flycheck evil-nerd-commenter evil-escape diminish counsel-projectile company-tern company-anaconda beacon))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
