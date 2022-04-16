(setq inhibit-startup-screen t)
(setq package-archives '(("gnu"   . "http://mirrors.ustc.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.ustc.edu.cn/elpa/melpa/")
			 ("org" . "http://mirrors.ustc.edu.cn/elpa/org")))

(setq package-check-signature nil ) ; do not check signature

(require 'package)

;; ininitalize the package manager
(unless (bound-and-true-p package--initialized)
    (package-initialize))

;; refresh app. contents
(unless package-archive-contents
  (package-refresh-contents))

(unless (package-installed-p 'use-package)
       (package-refresh-contents)
       (package-install 'use-package))



(eval-and-compile
  (setq use-package-always-ensure t)
  (setq use-package-always-defer t)
  (setq use-package-always-demand nil)
  (setq use-package-always-minimally t)
  (setq use-package-verbose t))

(provide 'init-elpa)
