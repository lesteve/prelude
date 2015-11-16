(require 'elpy)
(elpy-enable)

;; At the time of writing, jedi way faster than rope
(setq elpy-rpc-backend "jedi")

;; Use ipython rather than plain python for the python shell
(elpy-use-ipython)
