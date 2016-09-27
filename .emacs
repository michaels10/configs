;;set up package sources
(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

(custom-set-variables
'(dtrt-indent-mode t nil (dtrt-indent)))
(custom-set-faces)
;
;;allow/enable evil mode
(require 'evil)
(evil-mode 1)

;;company set up
(require 'company)
(setq company-idle-delay 0.05)
;;irony backend for faster c
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))
;;enable company globally
(add-hook 'after-init-hook 'global-company-mode)
;;add jedi autocompleting when in python mode.
(add-to-list 'company-backends 'company-jedi)

(require 'multi-term)
(setq multi-term-program "/bin/fish")

(dtrt-indent-mode 1)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;this is where non-package related configs begin.
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'monokai t)

(global-linum-mode t)
(setq inhibit-splash-screen t)
;and so my beard grew grey.
