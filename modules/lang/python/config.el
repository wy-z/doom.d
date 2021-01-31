
(use-package! python
  :init
  (when (featurep! +lsp)
    (add-hook 'python-mode-local-vars-hook #'lsp!))
)

(use-package! lsp-jedi
  :after lsp-mode
  :init
  (add-to-list 'lsp-enabled-clients 'jedi)
)

(use-package! pyvenv
  :after python
  :config
  (add-hook 'python-mode-local-vars-hook #'pyvenv-track-virtualenv)
)
