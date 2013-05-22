
;; load up markdown mode (actually gfm: github-flavored markdown)
(add-to-list 'auto-mode-alist '("\\.text\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))
(add-to-list 'auto-mode-alist '("\\.mkdn\\'" . gfm-mode))

(setq markdown-enable-math "t")

;;; Markdown Command
(cond
 ((executable-find "rdiscount")
  (setq markdown-command "rdiscount"))
 ((executable-find "multimarkdown")
  (setq markdown-command "multimarkdown"))
 ((executable-find "MultiMarkdown.pl")
  (setq markdown-command "MultiMarkdown.pl"))
 ;; ((executable-find "maruku")
 ;; (setq markdown-command "maruku"))
 ((executable-find "bluecloth")
  (setq markdown-command "bluecloth"))
 ((executable-find "markdown")
  (setq markdown-command "markdown"))
 ((executable-find "Markdown.pl")
  (setq markdown-command "Markdown.pl"))
 ((executable-find "pandoc")
  (setq markdown-command "pandoc"))
 ((executable-find "redcarpet")
  (setq markdown-command "redcarpet"))
 ((executable-find "kramdown")
  (setq markdown-command "kramdown"))
 ;; ((executable-find "bluefeather")
 ;; (setq markdown-command "bluefeather"))
 ((executable-find "mdown")
  (setq markdown-command "mdown"))
 )

(cond
 ((file-directory-p "/Applications/Marked.app")
  (setq markdown-open-command "/Applications/Marked.app/Contents/Resources/mark")
  )
  )

