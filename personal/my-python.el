(require 'elpy)
(elpy-enable)

;; At the time of writing, jedi way faster than rope
(setq elpy-rpc-backend "jedi")

;; Use ipython rather than plain python for the python shell
(elpy-use-ipython)

;; Work around Anaconda having a different Qt version that my system Qt
(setq python-shell-interpreter-args "--simple-prompt -i --matplotlib tk")

;; emacs ipython notebook
(require 'ein)

;; auto-complete for ein
(setq ein:use-auto-complete-superpack t)
;; (setq ein:use-smartrep t)

;; from the doc
(add-hook 'ein:connect-mode-hook 'ein:jedi-setup)

;; Taken from
;; https://github.com/millejoh/emacs-ipython-notebook/blob/master/lisp/zeroein.el
;; This significantly improves completion in the ipython notebook
;; buffers. Otherwise . opens a minibuffer to do the completion which
;; is really crap
(require 'auto-complete-config)
(ac-config-default)

;; MuMaMo (not sure about this one)
(custom-set-faces
 '(mumamo-background-chunk-major
   ((((class color) (min-colors 88) (background dark)) nil)))
 ;; '(mumamo-background-chunk-submode1
 ;;   ((((class color) (min-colors 88) (background dark)) nil)))
 )
