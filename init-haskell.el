(require-package 'haskell-mode)
(setq haskell-font-lock-symbols t)

(add-hook 'haskell-mode-hook
          (lambda ()
            (define-key haskell-mode-map (kbd "C-c h") 'hoogle)
            (turn-on-haskell-doc-mode)
            (turn-on-haskell-indent)))

(eval-after-load 'haskell-mode
  '(define-key haskell-mode-map (kbd "RET") 'newline))

(require-package 'ghci-completion)
(add-hook 'inferior-haskell-mode-hook 'turn-on-ghci-completion)

(require-package 'flymake-hlint)
(add-hook 'haskell-mode-hook #'flymake-hlint-load)

(provide 'init-haskell)
