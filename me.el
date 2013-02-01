(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))

(global-linum-mode t)

(global-set-key (kbd "C-x f") 'find-file-in-project)
