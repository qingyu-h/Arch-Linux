(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))

(use-package restart-emacs)

(use-package emacs
  :config
  (defalias 'yes-or-no-p 'y-or-n-p)
  (setq display-line-numbers-type 'relative)
  (global-display-line-numbers-mode t))

(use-package drag-stuff
  :bind (("<M-up>". drag-stuff-up)
	 ("<M-down>". drag-stuff-down)))

;; Auto update packages
;; this maybe useful, if you want to update all the packages with command, just like me
(use-package auto-package-update
  :init (setq auto-package-update-delete-old-versions t
	      auto-package-update-hide-results t))

(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))
(use-package highlight-parentheses
  :ensure t)

(use-package which-key
  :ensure t
  :init (which-key-mode))

(use-package ivy
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
	ivy-initial-inputs-buffers-alist nil
	ivy-count-format "%d/%d"
	enable-recursive-minibuffers t
	ivy-re-builders-alist '((t  .  ivy--regex-ignore-order))
    ivy-posframe-mode 1))

(use-package counsel
  :after (ivy)
  :bind (("M-x" . counsel-M-x)
	 ("C-x C-f" . counsel-find-file)
	 ("C-c f" . counsel-recentf)
	 ("C-c g" . counsel-git)))

(use-package swiper
  :after ivy
  :bind (("C-s" . swiper)
	 ("C-r" . swiper-isearch-backward))
  :config (setq swiper-action-recenter t
		swiper-include-line-number-in-search t))

(use-package flycheck
  :hook (after-init . global-flycheck-mode))

(use-package crux
  :bind (("C-a" . crux-move-beginning-of-line)))

(use-package ivy-posframe
  :init
  (setq ivy-posframe-display-functions-alist
	'((swiper  .ivy-posframe-display-at-frame-center)
	  (complete-symbol .ivy-posframe-dispaly-at-frame-center)
	  (counsel-M-x .ivy-posframe-dispaly-at-frame-center)
	  (sounsel-find-file .ivy-posframe-dispaly-at-frame-center)
	  (ivy-switch-buffer .ivy-posframe-dispaly-at-frame-center)
	  (t       .ivy-posframe-dispaly-at-frame-center))))

(use-package ace-window
  :bind(("M-o" . 'ace-window)))


(provide 'init-package)

;;; init-package.el ends here
