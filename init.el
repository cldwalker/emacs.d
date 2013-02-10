(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(
                      starter-kit
                      starter-kit-lisp
                      starter-kit-ruby
                      starter-kit-js
                      clojure-mode
                      clojure-test-mode
                      nrepl
                      markdown-mode
                      )
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(add-hook 'clojure-mode-hook
   (lambda ()
     (setq inferior-lisp-program "lein repl")))
