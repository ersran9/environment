(menu-bar-mode 0)
(tool-bar-mode 0)
(toggle-scroll-bar 0)
(setq inhibit-startup-screen t)
(setq split-height-threshold nil)
(setq split-width-threshold 0)

(global-set-key (kbd "s-<tab>") 'other-window)
(defun prev-window ()
   (interactive)
   (other-window -1))
(global-set-key (kbd "S-s-<iso-lefttab>") 'prev-window)


(require 'package)
(add-to-list 'package-archives
'("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)


;; flex
(require 'ido)
(ido-mode t)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

;; rainbow delims
;; (require 'rainbow-delimiters)

;; haskell
;; (require 'haskell-interactive-mode)
;; (require 'haskell-process)


;; lsp
;; (require 'lsp-mode)
;; (require 'lsp-ui)
;; (require 'lsp-haskell)

;; (add-hook 'lsp-mode-hook 'lsp-ui-mode)
;; (add-hook 'haskell-mode-hook #'lsp-haskell-enable)
;; (add-hook 'haskell-mode-hook 'flycheck-mode)


(add-hook 'haskell-mode-hook 'haskell-indentation-mode)
;; (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
;; (add-hook 'haskell-mode-hook 'rainbow-delimiters-mode)
;; (add-hook 'haskell-mode-hook 'intero-mode)
;; (add-hook 'haskell-mode-hook 'turn-on-haskell-unicode-input-method)


;; (define-key haskell-mode-map (kbd "C-c C-c") 'haskell-process-load-or-reload)
;; (define-key haskell-mode-map (kbd "C-`") 'haskell-interactive-bring)
;; (define-key haskell-mode-map (kbd "C-c C-t") 'haskell-process-do-type)
;; (define-key haskell-mode-map (kbd "C-c C-i") 'haskell-process-do-info)
;; (define-key haskell-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
;; (define-key haskell-mode-map (kbd "C-c c") 'haskell-process-stack)
;; (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)
(set-frame-font "Hack-11")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#657b83"])
 '(background-color "#002b36")
 '(background-mode dark)
 '(custom-enabled-themes (quote (manoj-dark)))
 '(custom-safe-themes
   (quote
    ("1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" default)))
 '(foreground-color "#839496")
 '(haskell-font-lock-symbols (quote unicode))
 '(haskell-process-log t)
 '(haskell-process-suggest-remove-import-lines t)
 '(haskell-tags-on-save t)
 '(lsp-haskell-process-path-hie "/home/sreenidhi/.local/bin/hie-8.2.2")
 '(package-selected-packages
   (quote
    (lsp-haskell lsp-ui lsp-mode rainbow-delimiters python-mode persistent-scratch magit intero ghc))))

;; (add-hook 'haskell-mode-hook (lambda () (ghc-init)))

;; js
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq js2-highlight-level 3)

;; python

(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'interpreter-mode-alist '("python" . python-mode))

;; debug
(set-locale-environment "en_US.UTF-8")

;; rust

(add-to-list 'load-path "~/elisp/rust-mode")
(autoload 'rust-mode "rust-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

;; persistent buffer
(persistent-scratch-autosave-mode 1)

;; coq
;; Open .v files with Proof General's Coq mode
(load "~/.emacs.d/lisp/PG/generic/proof-site")

;; powerline
;; (add-to-list 'load-path "~/.emacs.d/vendor/emacs-powerline")
;; (require 'powerline)

(load-file (let ((coding-system-for-read 'utf-8))
                (shell-command-to-string "agda-mode locate")))

;; force use C-f C-b etc
(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))
(global-unset-key (kbd "<C-left>"))
(global-unset-key (kbd "<C-right>"))
(global-unset-key (kbd "<C-up>"))
(global-unset-key (kbd "<C-down>"))
(global-unset-key (kbd "<M-left>"))
(global-unset-key (kbd "<M-right>"))
(global-unset-key (kbd "<M-up>"))
(global-unset-key (kbd "<M-down>"))
(global-set-key (kbd "M-<left>") 'windmove-left)  
(global-set-key (kbd "M-<right>") 'windmove-right)
(global-set-key (kbd "M-<up>") 'windmove-up)
(global-set-key (kbd "M-<down>") 'windmove-down)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
