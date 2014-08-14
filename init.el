;;;
;;; Jeroen's emacs config
;;;

;; Defaults
(tool-bar-mode -1)
(scroll-bar-mode -1)
(setq inhibit-startup-message t)

;; Packages

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)

(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))

(defun ensure-package-installed 
  (p)
  (if (not (package-installed-p p))
      (package-install p)))

(ensure-package-installed 'magit)
(ensure-package-installed 'projectile)



;; Look-and-Feel
(set-default-font "PragmataPro-14")
(set-frame-font "PragmataPro-14")
