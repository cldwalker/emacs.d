(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

(when (not (package-installed-p 'nrepl))
    (package-install 'nrepl))
