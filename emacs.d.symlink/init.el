
;; Set defaults
(setq-default
 indent-tabs-mode nil
 tab-width 4
 c-basic-offset 4
)

(global-linum-mode 1)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)
(fset `yes-or-no-p `y-or-n-p)
(electric-indent-mode 0)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
(add-to-list 'default-frame-alist '(fullscreen . fullheight))


;; list the packages you want
(setq package-list '(solarized-theme
                     auto-complete
                     use-package
                     json-mode))

(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("melpa-stable" . "http://stable.melpa.org/packages/"))
      package-archive-priorities '(("melpa-stable" . 1)))

;; activate all the packages (in particular autoloads)
(package-initialize)

;; fetch the list of packages available
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(require 'use-package)

(use-package json-mode)
(use-package sass-mode)
(use-package scala-mode)
(use-package auto-complete)

(load-theme 'solarized-dark)
(enable-theme 'solarized-dark)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(package-selected-packages
   (quote
    (auto-complete nginx-mode buffer-move arduino-mode color-theme-sanityinc-solarized color-theme-sanityinc-tomorrow solarized-theme json-mode multiple-cursors color-theme-solarized))))



; Remove trailing space on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; Add new line at end of file
(setq require-final-newline 't)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'erase-buffer 'disabled nil)

(ac-config-default)

;;(defadvice json-encode (around encode-nil-as-json-empty-object activate)
;;  (if (null object)
;;    (setq ad-return-value "{}")
;;    ad-do-it))
