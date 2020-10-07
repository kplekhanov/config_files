;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; initial settings                                                       ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;: ## list the repositories containing them
(setq package-archives '(("elpa" . "http://tromey.com/elpa/")
			 ("gnu" . "http://elpa.gnu.org/packages/")
			 ("marmalade" . "http://marmalade-repo.org/packages/")))
;; ## package facility
(require 'package)
(package-initialize)
;; ## refreshing packages -- time-consuming and should be done on demand
;(package-refresh-contents)
;; ## list the packages needed to be installed
(setq package-list '(color-theme
		     undo-tree))
;; Iterate on packages and install missing ones
(dolist (pkg package-list)
  (unless (package-installed-p pkg)
    (package-install pkg)))

;; ## undo tree with C-x\u
(require 'undo-tree)
(global-undo-tree-mode)
;; ## delete the selection when writing over it
(delete-selection-mode 1)
;; ## line numbers globally
(global-linum-mode t)
;; ## add some space
(setq linum-format "%d ")
;; ## tabulation of 4
(setq-default tab-width 4)
;; ## color theme
;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-empty-void)
;; ## Matches parentheses
(show-paren-mode 1)
(setq blink-matching-delay 0.1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; keybindings                                                            ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(global-set-key "\C-x\C-b" 'buffer-menu)
(global-set-key (kbd "C-x <up>") 'other-window)
(global-set-key (kbd "M-[ h") 'beginning-of-line)
(global-set-key (kbd "M-[ f") 'end-of-line)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; python settings                                                        ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ## for ipython, otherwise messy staff
;;(setenv "IPY_TEST_SIMPLE_PROMPT" "1")

;; ## elpy needs to be installed
;;(setq python-shell-interpreter "ipython")
;;(elpy-enable)

;; ## pyvenv
;;(setenv "WORKON_HOME" "/home/kplekhanov/opt/miniconda3/envs/")
;;(pyvenv-workon "norm")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; latex settings                                                         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; ## Enable parse on load
(setq TeX-parse-self t)
;; ## Enable parse on save
(setq TeX-auto-save t)
;; ## Always ask for the master file
(setq-default TeX-master nil)
;; ## PDF mode (rather than DVI-mode)
(setq TeX-PDF-mode t)
;; ## math mode under C-c\~
(add-hook 'TeX-mode-hook 'LaTeX-math-mode)
;; ## reftex
(add-hook 'TeX-mode-hook 'turn-on-reftex)
;; ## flyspell
(add-hook 'TeX-mode-hook 'flyspell-mode)
;; ## Forward and Inverse Search
(setq TeX-source-correlate-method (quote synctex))
;; ## Enable synctex correlation. From Okular just press
;; ## Shift + Left click to go to the good line.
(setq TeX-source-correlate-mode t
      TeX-source-correlate-start-server t)
;; ## Set Okular as the default PDF viewer.
(eval-after-load "tex"
  '(setcar (cdr (assoc 'output-pdf TeX-view-program-selection)) "Okular"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; bla bla
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (color-theme)))
 '(safe-local-variable-values (quote ((TeX-master . t)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
