(add-to-list 'default-frame-alist '(font . "-outline-Bitstream Vera Sans Mono-normal-normal-normal-mono-12-*-*-*-c-*-iso8859-1"))

(server-mode 1)

;; I don't want to automatically clean up trailing spaces
(setq prelude-clean-whitespace-on-save nil)

;; So I can use accents when I feel like writing some French
(require 'iso-transl)

;; No idea what this is for
(add-hook 'org-mode-hook
          (lambda ()
            (org-set-local 'yas/trigger-key [tab])
            (define-key yas/keymap [tab] 'yas/next-field-or-maybe-expand)))

