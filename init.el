;; Minimal UI
(setq inhibit-startup-message t)
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(set-face-attribute 'default nil :font "JetBrainsMonoNFP" :height 150)
(setq display-line-numbers-type 'relative)
(global-display-line-numbers-mode 1)

;; Package Manager
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))
(package-initialize)

;; Evil Mode
(unless (package-installed-p 'evil)
  (package-refresh-contents))
(require 'evil)
(evil-mode 1)

;; Org Mode
(unless (package-installed-p 'org)
  (package-refresh-contents)
  (package-install 'org))
(setq org-log-done 'time)
(setq org-startup-with-latex-preview t)

;; Org Tempo
(require 'org-tempo)

;; Doom Themes
(unless (package-installed-p 'doom-themes)
  (package-refresh-contents)
  (package-install 'doom-themes))
(require 'doom-themes)
(load-theme 'doom-tokyo-night t)

;; Doom Modeline
(unless (package-installed-p 'doom-modeline)
  (package-refresh-contents)
  (package-install 'doom-modeline))
(require 'doom-modeline)
(doom-modeline-mode 1)
(setq doom-modeline-height 15)
(setq doom-modeline-buffer-file-name-style 'truncate-upto-project)
(setq doom-modeline-major-mode-icon t)
(setq doom-modeline-minor-modes nil)

;; Icons
(unless (package-installed-p 'all-the-icons)
  (package-refresh-contents)
  (package-install 'all-the-icons))
(unless (find-font (font-spec :name "all-the-icons"))
  (all-the-icons-install-fonts t))
