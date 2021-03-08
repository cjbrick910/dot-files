(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-enabled-themes '(default))
 '(custom-safe-themes
   '("663b5f77cd5713f1e8a2fa3ecd9ef8d6a55f47b946e97ed0078485accdfd32cf" "94cee77012f1c9502091568d340369529ae6388e0d252e6c285fbaffc1090bef" "cbc82256450147cdcd062f38545f594c225092a476bf137b1387f395a373eba4" "7ea01d34e55707b3d4123c95ee6ab8016e786470f8ad4941aa3437b97e871c74" "bffa9739ce0752a37d9b1eee78fc00ba159748f50dc328af4be661484848e476" "e79caae96658605da5defe2faaed1d6f9bb08458a61a0831bf75fe9fc1b940a4" "30fa35b2d796ab625555d97712eafbba4a1b2fe553b5bd12e5659b0597aa0234" "69cadb59028859dd1cbf5525dcf62145977d6e8dc77c0ee49f95b321a3c0b659" "d43650ab2d879a1b1a48a5ebe91973df27bab4469f33e4b73933183dc6125306" "db17b0d5d850e1986623e1857dec2d8d1d83051210cbc2465425f7ab1037c511" "01a80bf92d91c3cc9b69c383f13d7625928884ff568007b7fe831df5a43d8b2d" "0d3a59e06fe39f3242bfa09efb9fd5e39b8fa182d6b12cd7740c86280fd0de96" "eb8009ebfce1cfd62f36b7e9718489ddedd77df3ce3ff48a6696dc0f8999d72c" default))
 '(global-company-mode t)
 '(global-hl-line-mode t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   '(use-package magithub company-c-headers company spacemacs-theme markdown-mode magit))
 '(tags-case-fold-search nil))
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(setq company-idle-delay 0.3)
(global-display-line-numbers-mode)
(put 'create-lockfiles 'safe-local-variable 'booleanp)
(dir-locals-set-class-variables 'gvfs '((nil . ((create-lockfiles . nil)))))
(dir-locals-set-directory-class (format "/run/user/%d/gvfs" (user-uid)) 'gvfs)
(global-visual-line-mode t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

