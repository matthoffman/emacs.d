(require 'package)
(add-to-list 'package-archives
   '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

; this bit originating from https://github.com/technomancy/emacs-starter-kit
(defvar my-packages '(starter-kit
                      starter-kit-bindings
                      starter-kit-js
                      starter-kit-lisp
                      starter-kit-eshell
                      starter-kit-ruby
                      color-theme-solarized
                      ;; ye olde clojure plugins
                      clojure-mode
                      clojure-test-mode
                      nrepl
                      rainbow-delimiters
                      ;; because we want to be sublime text
                      minimap
                      ;; Project navigation
                      projectile
                      ack-and-a-half

                      ;; org-mode ; I'm not this gutsy yet. bemacs
                      markdown-mode
                      hlinum)
  "A list of packages to ensure are installed at launch.")
;;            align-cljlet, mic-paren, ac-nrepl, nrepl-ritz


(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Bring back the menu bar.
;;(funcall menu-bar-mode t)

;; Load the provided Clojure start kit configurations
(load (concat user-emacs-directory "clojure-starter-kit.el"))
 
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-warning-face ((t (:inherit nil :foreground "red" :background nil))))
 '(linum-highlight-face ((t (:inherit default :background "color-238" :foreground "white"))) t)
 '(show-paren-match ((((class color) (background dark)) (:inherit nil :foreground "red")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" default))))
