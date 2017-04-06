;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

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

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'solarized-dark)

; Set tabs to 4 spaces
(setq-default indent-tabs-mode nil)
(setq tab-width 4)

; Remove trailing space on save
(add-hook 'before-save-hook 'delete-trailing-whitespace)

; Add new line at end of file
(setq require-final-newline 't)
(put 'erase-buffer 'disabled nil)

(ac-config-default)

;;(defadvice json-encode (around encode-nil-as-json-empty-object activate)
;;  (if (null object)
;;    (setq ad-return-value "{}")
;;    ad-do-it))
