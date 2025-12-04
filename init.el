;; setting up melpa
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu"   . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; python support
(use-package elpy
  :ensure t
  :init
  (elpy-enable))

;; lisp support
(use-package slime
  :ensure t
  :init
  (setq 

;; org mode (zettlekasten features)
(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory "~/org-roam")
  :bind (("C-c n l" . org-roam-buffer-toggle)
	 ("C-c n f" . org-roam-node-find)
	 ("C-c n i" . org-roam-node-insert))
  :config
  (org-roam-setup))

;; discord-rpc
(use-package elcord
  :ensure t
  :init
  (elcord-mode))

;; vim style undo
(use-package undo-fu)

;; vim keybindings
(use-package evil
  :demand t
  :bind (("<escape>" . keyboard-escape-quit))
  :init
  (setq evil-undo-system 'undo-fu)
  :config
  (evil-mode 1))

;; vim everywhere
(use-package evil-collection
  :after evil
  :config
  (setq evil-want-integration t)
  (evil-collection-init))

;; fontsize
(set-face-attribute 'default nil :height 180)

;; stuff I don't understand
;; warning telling me to do this
(setq evil-want-keybinding nil)

;; not sure what this is was added automatically
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-log-into-drawer t)
 '(package-selected-packages '(elcord elpy evil-collection org-roam slime undo-fu)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
