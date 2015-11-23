;; strongly inspired from core/prelude-packages.el

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)


(defvar my-packages
  '(elpy
    ox-reveal)
  "A list of packages to ensure are installed at launch.")

(require 'prelude-packages)

(defun my-install-packages ()
  "Install all packages listed in `my-packages'."
  (unless (every #'package-installed-p my-packages)
    ;; check for new packages (package versions)
    (message "%s" "Emacs Prelude is now refreshing its package database...")
    (package-refresh-contents)
    (message "%s" " done.")
    ;; install the missing packages
    (prelude-require-packages my-packages)))

(my-install-packages)
