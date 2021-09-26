;; Disable start-up message
(setq inhibit-startup-message t)

;; Hide menus
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1) 

;; Add MELPA package repository
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(arc-dark))
 '(custom-safe-themes
   '("1fbd63256477789327fe429bd318fb90a8a42e5f2756dd1a94805fc810ae1b62" default))
 '(package-selected-packages '(arc-dark-theme writeroom-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(defun make-buffer-notes()
  "Make notes-file at NOTES default folder (on desktop for windows)"
  (setq notes-path "/home/jose/Documents/Kirjoitukset/")
;;  (setq notes-time (concat "Kirjoitettu " (format-time-string "%H%M" (current-time)) "Hrs"))
  (setq notes-timestamp (format-time-string "%d%b%g" (current-time)))
  (setq notes-full-path (concat notes-path notes-timestamp  ".txt"))
  (find-file notes-full-path)
  (insert " "))
;;  (setq initial-major-mode 'writeroom-mode)

(make-buffer-notes)
