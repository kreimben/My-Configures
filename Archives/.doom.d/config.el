(setq user-full-name "Aksidion Kreimben"
      user-mail-address "aksidion@kreimben.com")

(setq doom-theme 'doom-one)
(setq doom-font (font-spec :family "D2Coding" :size 24)
      doom-variable-pitch-font (font-spec :family "D2Coding" :size 24)
      doom-big-font (font-spec :family "D2Coding" :size 30))
(after! doom-themes--colors
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t))
(custom-set-faces!
  '(font-lock-comment-face :slant italic)
  '(font-lock-keyword-face :slant italic))

(setq org-directory "~/org/")

(setq display-line-numbers-type t)

;; Enable minimap.
(minimap-mode t)

;; Related about lsp.
(setq lsp-ui-mode t)

(setq lsp-ui-doc-enable t)
(setq lsp-ui-doc-delay 0)
(setq lsp-ui-doc-show-with-cursor t)
(setq lsp-ui-doc-show-with-mouse t)

(setq lsp-treemacs-sync-mode 1)

(setq lsp-completion-show-detail t)
(setq lsp-completion-show-kind t)

;(setq lsp-ui-sideline-enable 0)
(setq lsp-ui-sideline-show-diagnostics t)
(setq lsp-ui-sideline-show-hover t)
(setq lsp-ui-sideline-show-code-actions t)
(setq lsp-ui-sideline-update-mode 'line)
(setq lsp-ui-sideline-delay 0)

(global-visual-line-mode t)

(use-package! lsp-tailwindcss)

;; 전체화면 세팅
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Rust settings
;(after! rustic (setq rustic-lsp-server 'rust-analyzer))
