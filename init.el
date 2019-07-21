; Backups annoy me
(setq backup-inhibited t)
(setq auto-save-default nil)


; No longer need hand-holding
(setq inhibit-startup-message t)
(menu-bar-mode -1)

; Basic editor settings
(setq kill-whole-line t)
(setq column-number-mode t)
(setq hs-minor-mode t)
(setq-default tab-width 3)
(setq-default indent-tabs-mode nil)

; C/C++ settings
(setq c-default-style "ellemtel"
      c-basic-offset 3
      tab-width 3)
(c-set-offset 'case-label'+)  ; fix case indentation
; Make hpp files indent in c++ mode:
(add-to-list 'auto-mode-alist '("\\.hpp\\'" . c++-mode))

; Javascript settings
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(setq js-indent-level 3)
(setq js-switch-indent-offset 3)
(setq js2-indent-switch-body t)
(add-hook 'js-mode-hook 'js2-minor-mode)

; Python settings
(add-hook 'python-mode-hook
   (lambda()
     (setq tab-width 4)
     (setq python-indent 4)))

; Use nxml-mode for xml, xsl, rng, svg, html variations
(setq auto-mode-alist
   (cons '("\\.\\(xml\\|xsl\\|rng\\|svg\\|x?html?\\)\\'" . nxml-mode)
      auto-mode-alist))

(require 'generic-x)
(define-generic-mode
  ;; mode name parameter:
  'sfw-mode
  ;; comments parameter:
  '("#")
  ;; keywords parameter:
  '("schema" "type" "procedure" "schema-proc" "$database" "$xml-stylesheet"
    "$default-mode" "autoload_tag" "button" "label" "tag" "task" "title"
     "on_line_click" "form-action" "filename" "url" "result" "confirm")
  ;; other highlighting parameter:
  '(("form-\\(new\\|edit\\|view\\|submit\\)" . font-lock-constant-face)
    ("\\(delete\\|update\\|add\\|export\\)" . font-lock-constant-face)
   )
  ;; filename templates parameter (files that activate this mode):
  '("\\.srm$")
  ;; other functions parameter:
  nil
  ;; description string parameter:
  "A mode for Schema Framework SRM files"
)

;; Failed attempt to get Shift-tab to unindent:
;; (add-hook 'sfw-mode-hook
;;           (lambda () (local-set-key (kbd "<backtab>") 'backward-to-indentation)))


; Highlight <xsl:template for ease of scanning in XSL file:
;; (defun xsl_highlight_templates()
;;   (interactive "p")
;;   (highlight-regexp "<xsl:template[^>]+>" 'trailing-whitespace))
;; (add-hook 'nxml-mode-hook 'xsl_highlight_templates)

(defun xsl_highlight_templates()
  (interactive "p")
  (highlight-regexp "<xsl:template" 'show-paren-mismatch))
(add-hook 'nxml-mode-hook 'xsl_highlight_templates)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#e090d7" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:foreground "#ff0000"))))
 '(font-lock-function-name-face ((t (:foreground "#6666FF"))))
 '(font-lock-string-face ((t (:foreground "Orange"))))
 '(isearch-fail ((t (:background "blue"))))
 '(minibuffer-prompt ((t (:foreground "brightcyan")))))
(put 'downcase-region 'disabled nil)
