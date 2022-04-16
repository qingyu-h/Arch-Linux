
(add-to-list 'load-path
              (expand-file-name (concat user-emacs-directory "lisp")))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-startup)
(require 'init-elpa)
(require 'init-package)
(require 'init-ui)
(require 'highlight-parentheses)
(add-hook 'prog-mode-hook #'highlight-parentheses-mode)

(when (file-exists-p custom-file)
    (load-file custom-file))


