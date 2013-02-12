(remove-hook 'prog-mode-hook 'esk-turn-on-hl-line-mode)
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\.md$" . markdown-mode))

(global-linum-mode t)
(setq vc-follow-symlinks t)

(defun revert-buffer-no-confirm ()
  "Revert buffer without confirmation."
  (interactive) (revert-buffer t t))

(global-set-key (kbd "C-x f") 'find-file-in-project)
