
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yaml-omode auto-yasnippet yasnippet-snippets yasnippet dockerfile-mode company-ansible ansible-doc ansible highlight-defined hideshow-org diminish use-package))))
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
(tool-bar-mode -1)
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(global-font-lock-mode 1)

(require 'ido)
(ido-mode 1)


(set-frame-font "Inconsolata 18" nil t)

(defun bootstrap-use-package ()
  "Load `use-package' possibly installing it beforehand"
  (if (locate-library "package")
      (progn
        (require 'package)
        (setq package-user-dir (locate-user-emacs-file
                                (concat
                                 (file-name-as-directory "elpa")
                                 emacs-version)))
        (setq package-archives
              '(("gnu"          . "https://elpa.gnu.org/packages/")
                ("marmalade"    . "https://marmalade-repo.org/packages/")
                ("melpa"        . "https://melpa.org/packages/")
                ("melpa-stable" . "https://stable.melpa.org/packages/")
                ("org"          . "https://orgmode.org/elpa/"))
              package-archive-priorities
              '(("org"          . 20)
                ("melpa-stable" . 15)
                ("gnu"          . 10)
                ("melpa"        . 5)
                ("marmalade"    . 0)))
        (setq package-enable-at-startup nil)
        (package-initialize)
        (unless (package-installed-p 'use-package)
          (package-refresh-contents)
          (package-install 'use-package))
        (setq use-package-enable-imenu-support t)
        (require 'use-package))
    (message "WARNING: Ancient emacs! No advice-add, package.el")
    (defmacro advice-add (&rest body))
    (defmacro use-package (&rest body)))
  (use-package diminish :ensure t :defer t)
  (use-package bind-key :ensure t :defer t))
(bootstrap-use-package)


(use-package highlight-defined
  :ensure t
  :commands highlight-defined-mode)

(use-package ansible :ensure t :defer t)
(use-package ansible-doc :ensure t :defer t)
(use-package company-ansible :ensure t :defer t)

(use-package dockerfile-mode :ensure t :defer t)

(use-package yasnippet
  :ensure t
  :defer 7
  :diminish yas-minor-mode
  :commands yas-global-mode
  :mode ("emacs\\.d/snippets/" . snippet-mode)
  :init (setq yas-snippet-dirs '("~/.emacs.d/snippets"))
  :config (yas-global-mode 1))

(use-package yasnippet-snippets
  :ensure t
  :after yasnippet)

(use-package auto-yasnippet
  :ensure t
  :bind (("C-c Y" . aya-create)
         ("C-c y" . aya-expand-with-indent))
  :config (defun aya-expand-with-indent (arg)
            (interactive "P")
            (aya-expand)
            (unless arg
              (indent-for-tab-command))))

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))

