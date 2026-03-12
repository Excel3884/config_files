;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets. It is optional.
;; (setq user-full-name "John Doe"
;;       user-mail-address "john@doe.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom:
;;
;; - `doom-font' -- the primary font to use
;; - `doom-variable-pitch-font' -- a non-monospace font (where applicable)
;; - `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;; - `doom-symbol-font' -- for symbols
;; - `doom-serif-font' -- for the `fixed-pitch-serif' face
;;
;; See 'C-h v doom-font' for documentation and more examples of what they
;; accept. For example:
;;
;;(setq doom-font (font-spec :family "Fira Code" :size 12 :weight 'semi-light)
;;      doom-variable-pitch-font (font-spec :family "Fira Sans" :size 13))
;;
;; If you or Emacs can't find your font, use 'M-x describe-font' to look them
;; up, `M-x eval-region' to execute elisp code, and 'M-x doom/reload-font' to
;; refresh your font settings. If Emacs still can't find your font, it likely
;; wasn't installed correctly. Font issues are rarely Doom issues!

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-one)
; (setq doom-theme 'compline)

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
;; (setq org-directory "~/org/")


;; Whenever you reconfigure a package, make sure to wrap your config in an
;; `after!' block, otherwise Doom's defaults may override your settings. E.g.
;;
;;   (after! PACKAGE
;;     (setq x y))
;;
;; The exceptions to this rule:
;;
;;   - Setting file/directory variables (like `org-directory')
;;   - Setting variables which explicitly tell you to set them before their
;;     package is loaded (see 'C-h v VARIABLE' to look up their documentation).
;;   - Setting doom variables (which start with 'doom-' or '+').
;;
;; Here are some additional functions/macros that will help you configure Doom.
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;; Alternatively, use `C-h o' to look up a symbol (functions, variables, faces,
;; etc).
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
;;




;; Custom configuration

;; Set custom font
(setq doom-font (font-spec :family "JetBrains Mono Nerd Font" :size 20))


;; Evil mode setup (Inspired by Joshuablais)
;; Evil-escape sequence
(setq-default evil-escape-key-sequence "jj")
(setq-default evil-escape-delay 0.5)
; Don't move cursor back when exiting insert mode
(setq evil-move-cursor-back nil)
;; granular undo with evil mode
(setq evil-want-fine-undo t)
;; Enable paste from system clipboard with C-v in insert mode
(evil-define-key 'insert global-map (kbd "C-v") 'clipboard-yank)


;; Change splash screen image
(setq fancy-splash-image (concat doom-user-dir "doomEmacsRouge_scaled.svg"))
(setq +doom-dashboard-banner-padding '(2 . 2) )

;; Org settings
(setq deft-directory "~/Documents/org/"
      deft-extensions '("org" "txt")
      deft-recursive t)

(setq org-directory "~/Documents/org/")

(setq org-agenda-files '("~/Documents/org/"
                         "~/Documents/org/journal/"))

;; inspired by DT's config
(custom-theme-set-faces!
'doom-one
'(org-level-5 :inherit outline-3 :height 1.0)
'(org-level-4 :inherit outline-3 :height 1.0)
'(org-level-3 :inherit outline-3 :height 1.1)
'(org-level-2 :inherit outline-2 :height 1.2)
'(org-level-1 :inherit outline-1 :height 1.3)
'(org-document-title  :height 1.4 :bold t :underline nil))

(setq org-journal-date-prefix "#+TITLE: "
      org-journal-time-prefix ""
      org-journal-time-format ""
      org-journal-date-format "%a, %Y-%m-%d"
      org-journal-file-format "%Y-%m-%d.org")

(setq org-roam-directory "~/Documents/org/roam")

;; Markdown settings (inspired by DT's config)
(custom-set-faces
 '(markdown-header-face ((t (:inherit font-lock-function-name-face :weight bold :family "variable-pitch"))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 1.3))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 1.2))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 1.1))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face :height 1.0))))
 '(markdown-header-face-5 ((t (:inherit markdown-header-face :height 1.0)))))

;; Dired (inspired by DT's config)
(setq delete-by-moving-to-trash t
      trash-directory "~/.local/share/Trash/files/")

(use-package dired-open
  :config
  (setq dired-open-extensions '(("gif" . "sxiv")
                                ("jpg" . "sxiv")
                                ("png" . "sxiv")
                                ("mkv" . "mpv")
                                ("mp4" . "mpv")
                                ("pdf" . "okular")
                                ("xlsx". "libreoffice")
                                ("odt" . "libreoffice")
                                ("docx" . "libreoffice"))))

;; enable p4 syntax support
(use-package p4-ts-mode)


;; Moving between tabs configuration (inspired by Joshuablais)
(map! :ni "<C-tab>"   #'centaur-tabs-forward
      :ni "<C-iso-lefttab>" #'centaur-tabs-backward)


;; ERC Configuration
(setq erc-server "irc.libera.chat"
      erc-nick "angel99"    ; Change this!
      erc-track-shorten-start 8
      erc-autojoin-channels-alist '(("irc.libera.chat" "#systemcrafters" "#emacs" "#archlinux" "#debian" "#networking" "#technicalrenaissance"))
      erc-kill-buffer-on-part t
              erc-auto-query 'bury)

;; Org Latex Configuration
;; (setq org-latex-listings 't)
;; (setq org-latex-src-block-backend 'listings)
;; (with-eval-after-load 'ox-latex
;; (add-to-list 'org-latex-classes
;;              '("org-plain-latex"
;;                "\\documentclass{article}
;;            [NO-DEFAULT-PACKAGES]
;;            [PACKAGES]
;;            [EXTRA]"
;;                ("\\section{%s}" . "\\section*{%s}")
;;                ("\\subsection{%s}" . "\\subsection*{%s}")
;;                ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
;;                ("\\paragraph{%s}" . "\\paragraph*{%s}")
;;                ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))
;; (setq TeX-engine 'luatex)

;; Latex template by GeneKao on GitHub
(setq org-latex-pdf-process
      '("latexmk -pdflatex='pdflatex -interaction nonstopmode' -pdf -bibtex -f %f"))



(unless (boundp 'org-latex-classes)
  (setq org-latex-classes nil))

(add-to-list 'org-latex-classes
             '("article"
               "\\documentclass[11pt,a4paper]{article}
\\usepackage[utf8]{inputenc}
\\usepackage[T1]{fontenc}
\\usepackage{fixltx2e}
\\usepackage{graphicx}
\\usepackage{longtable}
\\usepackage{float}
\\usepackage{wrapfig}
\\usepackage{rotating}
\\usepackage[normalem]{ulem}
\\usepackage{amsmath}
\\usepackage{textcomp}
\\usepackage{marvosym}
\\usepackage{wasysym}
\\usepackage{amssymb}
\\usepackage{hyperref}
\\usepackage{mathpazo}
\\usepackage{color}
\\usepackage{enumerate}
\\usepackage{listings} % custom
\\definecolor{bg}{rgb}{0.95,0.95,0.95}
\\tolerance=1000
      [NO-DEFAULT-PACKAGES]
      [PACKAGES]
      [EXTRA]
\\linespread{1.1}
\\hypersetup{pdfborder=0 0 0}"
               ("\\section{%s}" . "\\section*{%s}")
               ("\\subsection{%s}" . "\\subsection*{%s}")
               ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
               ("\\paragraph{%s}" . "\\paragraph*{%s}")))


(after! org
        (add-hook 'after-save-hook #'org-babel-tangle))

(setq visual-line-mode 't) ;; to be fixed

(setq avy-all-windows 't) ;; enable avy for all visible windows
