;;; cosmos-dark-theme.el --- Dark version of the Cosmos theme for Emacs. -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2019 Miriam Retka
;;
;; Author: Miriam Retka <http://github.com/auralcat>
;; Maintainer: Miriam Retka <miriamretka@tutanota.com>
;; Created: July 22, 2019
;; Version: 2.0
;; Keywords: dark theme faces
;; Homepage: https://github.com/auralcat/cosmos-theme
;; Package-Requires: ((emacs "24.4"))
;;
;; This file is NOT part of GNU Emacs.
;;
;;; Commentary:
;;
;; This is the dark version of the Cosmos theme. Turned out that I liked the
;; light version a lot and I was looking for a similar dark theme.
;; The theme introduces the same fonts and typography as the light one, just shifting the color scheme.
;;
;; # Installation
;;
;; ## Manual
;; Download `cosmos-theme.el` to the directory `~/.emacs.d/themes/`.
;; Add this to your `.emacs` (or `init.el`):
;;
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;
;; Now you can load the theme with the interactive function `load-theme` like this:
;;
;; `M-x load-theme RET cosmos-dark`
;;
;; Alternatively, you can run `M-x customize-themes` and choose `cosmos` from
;; the list of themes that appear there.
;;
;; ## Extra fonts
;; You will need to install the Lato, Poppins and Roboto fonts in your system
;; for the theme to work properly.
;;
;; # Configuration
;; To load this theme automatically on Emacs startup, add this to your `init.el`:
;;     (load-theme 'cosmos t)
;;; Code:
(deftheme cosmos-dark
  "Inspired by the Astro design system")

(let (
      (earth-100   "#b8fcac")
      (earth-200   "#9cf184")
      (earth-300   "#88e967")
      (earth-400   "#74e24a")
      (earth-500   "#56b53f")
      (earth-600   "#469d39")
      (earth-700   "#388833")
      (earth-800   "#276f2d")
      (earth-900   "#145327")
      (earth-1000  "#084222")
      (mars-100    "#ffcace")
      (mars-200    "#f6b1b5")
      (mars-300    "#ea9297")
      (mars-400    "#dd676b")
      (mars-500    "#d45459")
      (mars-600    "#ac3c40")
      (mars-700    "#9a3135")
      (mars-800    "#7b1e22")
      (mars-900    "#651115")
      (mars-1000   "#500508")
      (moon-100    "#f6f7f8")
      (moon-200    "#e9eef2")
      (moon-300    "#afbec9")
      (moon-400    "#8296a4")
      (moon-500    "#597183")
      (moon-600    "#495c69")
      (moon-700    "#3f4c55")
      (moon-800    "#384248")
      (moon-900    "#32383c")
      (moon-1000   "#1c2124")
      (space-100   "#fff")
      (space-200   "#f5f5f5")
      (space-300   "#e5e5e5")
      (space-400   "#c5c5c5")
      (space-500   "#a5a5a5")
      (space-600   "#858585")
      (space-700   "#656565")
      (space-800   "#454545")
      (space-900   "#353535")
      (space-1000  "#202020")
      (sun-100     "#fffec1")
      (sun-200     "#fbee88")
      (sun-300     "#f7e05b")
      (sun-400     "#f4d330")
      (sun-500     "#f1c500")
      (sun-600     "#cea800")
      (sun-700     "#b19100")
      (sun-800     "#8f7600")
      (sun-900     "#685500")
      (sun-1000    "#4b3e00")
      (uranus-100  "#a6f7ff")
      (uranus-200  "#86e3f9")
      (uranus-300  "#67cff3")
      (uranus-400  "#3db5eb")
      (uranus-500  "#159ce4")
      (uranus-600  "#147ec1")
      (uranus-700  "#1663a0")
      (uranus-800  "#16518b")
      (uranus-900  "#183a6e")
      (uranus-1000 "#182758")
      (venus-100   "#ffc3f9")
      (venus-200   "#f0a0e9")
      (venus-300   "#e78ade")
      (venus-400   "#e078d6")
      (venus-500   "#c763ba")
      (venus-600   "#ab4b9a")
      (venus-700   "#993c85")
      (venus-800   "#842a6d")
      (venus-900   "#6b1550")
      )

  (custom-theme-set-faces
   `cosmos-dark

   ;; General faces
   `(default ((t (:inherit nil :stipple nil :background ,moon-1000 :foreground ,space-200 :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :height 120 :width normal :foundry "nil"))))
   `(cursor ((t (:background ,venus-300))))
   `(fixed-pitch ((t (:family "Roboto Mono" :height 140))))
   `(variable-pitch ((t  (:family "Lato" :height 200 :weight light))))
   `(minibuffer-prompt ((t (:foreground ,venus-200))))
   `(secondary-selection ((t (:background ,earth-800))))
   `(trailing-whitespace ((t (:background ,mars-600))))
   `(success ((t (:foreground ,earth-300))))
   `(error ((t (:foreground ,mars-300))))
   `(warning ((t (:foreground ,sun-700))))
   `(link ((t (:foreground ,uranus-500 :underline t))))
   `(link-visited ((t (:foreground ,venus-700 :underline t :slant italic))))
   `(region ((t (:background ,uranus-800))))
   `(shadow ((t (:foreground ,space-300))))
   `(highlight ((t (:background ,earth-300 :foreground ,uranus-800))))

   ;; Font-lock mode
   `(font-lock-builtin-face               ((t (:foreground  ,venus-200 :slant italic))))
   `(font-lock-comment-delimiter-face     ((t (:inherit     (font-lock-comment-face)))))
   `(font-lock-comment-face               ((t (:foreground  ,space-700 :slant italic))))
   `(font-lock-constant-face              ((t (:foreground  ,earth-400))))
   `(font-lock-doc-face                   ((t (:foreground  ,earth-600 :inherit font-lock-comment-face))))
   `(font-lock-function-name-face         ((t (:foreground  ,uranus-300))))
   `(font-lock-keyword-face               ((t (:foreground  ,venus-500))))
   `(font-lock-preprocessor-face          ((t (:inherit     (font-lock-builtin-face)))))
   `(font-lock-regexp-grouping-backslash  ((t (:foreground  ,sun-600   :inherit bold))))
   `(font-lock-regexp-grouping-construct  ((t (:foreground  ,sun-600   :inherit bold))))
   `(font-lock-string-face                ((t (:foreground  ,sun-600))))
   `(font-lock-type-face                  ((t (:foreground  ,sun-300 :slant italic))))
   `(font-lock-variable-name-face         ((t (:foreground  ,uranus-600  :slant italic))))
   `(font-lock-warning-face               ((t (:foreground  ,mars-600))))

   ;; Term colors
   `(term-color-black    ((t  (:foreground  ,space-1000  :background  ,space-1000))))
   `(term-color-blue     ((t  (:foreground  ,uranus-700  :background  ,uranus-700))))
   `(term-color-cyan     ((t  (:foreground  ,uranus-200  :background  ,uranus-200))))
   `(term-color-green    ((t  (:foreground  ,earth-500   :background  ,earth-500))))
   `(term-color-magenta  ((t  (:foreground  ,venus-200   :background  ,venus-200))))
   `(term-color-red      ((t  (:foreground  ,mars-500    :background  ,mars-500))))
   `(term-color-white    ((t  (:foreground  ,space-200   :background  ,space-200))))
   `(term-color-yellow   ((t  (:foreground  ,sun-300     :background  ,sun-300))))

   ;; Searching
   `(isearch                              ((t (:foreground  ,uranus-600 :background ,venus-300))))
   `(isearch-fail                         ((t (:foreground  ,space-600 :background ,mars-300))))

   ;; Linum-mode
   `(line-number ((t (:inherit shadow))))
   `(line-number-current-line ((t (:foreground ,moon-600 :background "#b8fcac":inherit line-number))))
   `(linum ((t (:inherit line-number))))

   ;; Rainbow delimiters
   `(rainbow-delimiters-base-face        ((t  (:foreground  ,venus-700))))
   `(rainbow-delimiters-depth-1-face     ((t  (:foreground  ,venus-500))))
   `(rainbow-delimiters-depth-2-face     ((t  (:foreground  ,earth-600))))
   `(rainbow-delimiters-depth-3-face     ((t  (:foreground  ,uranus-600))))
   `(rainbow-delimiters-depth-4-face     ((t  (:foreground  ,sun-600))))
   `(rainbow-delimiters-depth-5-face     ((t  (:foreground  ,sun-800))))
   `(rainbow-delimiters-depth-6-face     ((t  (:foreground  ,venus-600))))
   `(rainbow-delimiters-mismatched-face  ((t  (:foreground  ,venus-800))))
   `(rainbow-delimiters-unmatched-face   ((t  (:foreground  ,venus-800))))

   ;; Highlight-numbers-mode
   `(highlight-numbers-number ((t (:foreground ,earth-500))))

   ;; Outline faces
   `(outline-1  ((t  (:foreground ,venus-400 :family  "Poppins" :font-weight 600 :height  220))))
   `(outline-2  ((t  (:foreground ,earth-300  :inherit org-level-1   :height  200))))
   `(outline-3  ((t  (:foreground ,uranus-300  :inherit org-level-1   :height  180))))
   `(outline-4  ((t  (:foreground ,sun-600   :inherit org-level-1   :height  160))))

   ;; Org-mode faces
   `(org-level-1  ((t  (:inherit outline-1))))
   `(org-level-2  ((t  (:inherit outline-2))))
   `(org-level-3  ((t  (:inherit outline-3))))
   `(org-level-4  ((t  (:inherit outline-4))))
   `(org-document-info-keyword    ((t  (:foreground ,moon-500))))
   `(org-block    ((t  (:foreground ,moon-600))))
   `(org-code     ((t  (:foreground ,venus-200))))
   `(org-block     ((nil  (:inherit fixed-pitch :height 120))))
   `(org-block-begin-line     ((t  (:foreground ,moon-500 :inherit org-block :italic t))))
   `(org-block-end-line     ((t  (:inherit org-block-begin-line))))
   `(org-date     ((t  (:underline t :foreground ,venus-700 :inherit fixed-pitch))))
   `(org-table    ((t  (:foreground ,uranus-600 :inherit fixed-pitch))))
   `(org-src    ((t  (:inherit fixed-pitch))))
   `(org-tag    ((t  (:foreground ,uranus-400))))

   ;; Markdown faces
   `(markdown-header-face-1  ((t  (:inherit outline-1))))
   `(markdown-header-face-2  ((t  (:inherit outline-2))))
   `(markdown-header-face-3  ((t  (:inherit outline-3))))
   `(markdown-header-face-4  ((t  (:inherit outline-4))))
   `(markdown-code-face  ((t  (:inherit org-code))))
   `(markdown-blockquote-face  ((t  (:foreground ,uranus-300 :inherit org-block))))

   ;; Org-pomodoro
   `(org-pomodoro-mode-line ((t (:foreground ,venus-500))))
   `(org-pomodoro-mode-line-break ((t (:foreground ,earth-500))))

   ;; Ace-window
   `(aw-background-face    ((t (:foreground  ,moon-300))))
   `(aw-leading-char-face  ((t (:foreground  ,mars-500))))

   ;; Ace-jump
   `(ace-jump-face-background ((t (:inherit aw-background-face))))
   `(ace-jump-face-foreground ((t (:inherit aw-leading-char-face))))

   ;; Todo faces
   `(org-todo ((t (:box t :bold t :background ,mars-500 :foreground ,mars-900 :family "Poppins" :font-weight 600  :height 160))))
   `(org-done ((t (:background ,earth-500 :foreground ,earth-900 :inherit org-todo))))

   ;; Agenda faces
   `(org-agenda-calendar-event  ((t  (:bold t :foreground ,uranus-500))))
   `(org-agenda-calendar-sexp   ((t  (:bold t :foreground ,sun-800))))
   `(org-agenda-structure       ((t  (:foreground ,uranus-600))))
   `(org-agenda-date            ((t  (:bold t :foreground ,uranus-600 :family "Poppins" :font-weight 600 :height 180))))
   `(org-agenda-date-today      ((t  (:foreground  ,venus-400      :inherit     org-agenda-date))))
   `(org-agenda-date-weekend    ((t  (:foreground  ,earth-500      :inherit     org-agenda-date))))
   `(org-scheduled-previously   ((t  (:foreground  ,mars-600))))
   `(org-upcoming-deadline      ((t  (:bold        t               :foreground  ,mars-500))))
   `(org-scheduled-today        ((t  (:foreground  ,earth-400))))
   `(org-scheduled              ((t  (:foreground  ,venus-500))))

   ;; Enh-ruby-mode
   `(enh-ruby-op-face                ((t  (:foreground  ,earth-600))))
   `(enh-ruby-regexp-face            ((t  (:foreground  ,sun-700))))
   `(enh-ruby-regexp-delimiter-face  ((t  (:foreground  ,sun-700))))
   `(enh-ruby-string-delimiter-face  ((t  (:foreground  ,sun-800))))

   ;; Js2-mode
   `(js2-function-call               ((t  (:foreground  ,uranus-700))))
   `(js2-function-param              ((t  (:foreground  ,earth-700))))
   `(js2-external-variable           ((t  (:foreground  ,earth-500))))

   ;; Web-mode
   `(web-mode-html-tag-face         ((t  (:foreground  ,venus-500))))
   `(web-mode-html-attr-name-face   ((t  (:foreground  ,uranus-600))))
   `(web-mode-html-attr-value-face  ((t  (:foreground  ,earth-700))))
   `(web-mode-block-delimiter-face  ((t  (:foreground  ,venus-700))))
   `(web-mode-current-element-highlight-face  ((t  (:foreground  ,venus-800 :background ,earth-100))))

   ;; Company-mode
   `(company-preview            ((t  (:background  ,venus-700               :foreground  ,moon-900))))
   `(company-echo-common        ((t  (:background  ,venus-700               :foreground  ,moon-200))))
   `(company-preview-common     ((t  (:inherit     company-echo-common))))
   `(company-preview-search     ((t  (:foreground  ,space-900))))
   `(company-box-selection      ((t  (:background  ,sun-300))))
   `(company-tooltip            ((t  (:background  ,uranus-500              :foreground  ,moon-900))))
   `(company-tooltip-selection  ((t  (:background  ,earth-500               :foreground  ,moon-900))))
   `(company-tooltip-common     ((t  (:underline   t))))

   ;; Slack client faces
   `(slack-preview-face    ((t  (:background ,sun-100 :inherit org-code))))
   `(slack-message-output-text    ((t  (:family "Lato" :height 140 :inherit default))))
   `(slack-message-output-header    ((t  (:family "Poppins" :height 160 :font-weight 600 :bold t :underline t :foreground ,mars-500))))

   ;; Helm faces
   `(helm-locate-finish ((t  (:foreground  ,earth-600))))
   `(helm-grep-finish ((t  (:inherit helm-locate-finish))))

   ;; Main Helm faces
   `(helm-selection ((t  (:foreground ,space-300 :background ,venus-700))))
   `(helm-visible-mark ((t  (:foreground ,space-300 :background ,earth-700))))
   `(helm-source-header ((t (:background ,uranus-900 :foreground ,space-200 :weight bold :height 1.3 :family "Poppins"))))

   ;; Eshell/terminal faces
   `(eshell-ls-directory ((t  (:foreground  ,venus-500 :bold t))))

   ;; Mode line
   `(mode-line ((t (:background ,space-900 :box nil))))
   `(mode-line-buffer-id ((t (:weight bold))))
   `(mode-line-emphasis ((t (:foreground ,venus-400))))
   `(mode-line-highlight ((((class color) (min-colors 88)) (:box (:line-width 2 :color ,space-900 :style released-button))) (t (:inherit (highlight)))))
   `(mode-line-inactive ((t (:background ,moon-700 :foreground ,space-600 :box nil))))

   ;; Telephone-line
   `(telephone-line-evil-normal    ((t  (:background  ,mars-900    :inherit  telephone-line-evil))))
   `(telephone-line-evil-insert    ((t  (:background  ,earth-800   :inherit  telephone-line-evil))))
   `(telephone-line-evil-visual    ((t  (:background  ,sun-700     :inherit  telephone-line-evil))))
   `(telephone-line-evil-operator  ((t  (:background  ,uranus-700  :inherit  telephone-line-evil))))
   `(telephone-line-evil-emacs     ((t  (:background  ,venus-900   :inherit  telephone-line-evil))))
   `(telephone-line-evil-motion    ((t  (:background  ,uranus-900  :inherit  telephone-line-evil))))

   ;; Isearch
   `(isearch ((t (:background ,sun-900 :foreground ,venus-400 ))))
   `(isearch-fail ((t (:background ,mars-700 :foreground ,space-300 :weight bold))))
   `(query-replace ((t (:inherit (isearch))))))

  ;; Compilation-mode
  `(compilation-line-number     ((t (:inherit     font-lock-keyword-face))))
  `(compilation-column-number   ((t (:inherit     font-lock-doc-face))))
  `(compilation-error           ((t (:inherit     error))))
  `(compilation-info            ((t (:foreground  ,uranus-500))))
  `(compilation-mode-line-exit  ((t (:foreground  ,uranus-500))))
  `(compilation-mode-line-fail  ((t (:inherit     error))))
  `(compilation-mode-line-run   ((t (:foreground  ,uranus-500))))
  `(compilation-warning         ((t (:inherit     warning))))

  ;; Git gutter
  `(git-gutter:added     ((t  (:background  ,earth-500 :inherit default))))
  `(git-gutter:deleted   ((t  (:background  ,mars-500  :inherit default))))
  `(git-gutter:modified  ((t  (:background  ,venus-500 :inherit default))))

  ;; Extra stuff
  `(button ((t (:inherit (link)))))
  `(link ((((class color) (min-colors 88) (background light)) (:underline (:color foreground-color :style line) :foreground ,uranus-300)) (((class color) (background light)) (:underline (:color foreground-color :style line) :foreground "blue")) (((class color) (min-colors 88) (background dark)) (:underline (:color foreground-color :style line) :foreground "cyan1")) (((class color) (background dark)) (:underline (:color foreground-color :style line) :foreground "cyan")) (t (:inherit (underline)))))
  `(link-visited ((default (:inherit (link))) (((class color) (background light)) (:foreground ,uranus-800)) (((class color) (background dark)) (:foreground "violet"))))
  `(fringe ((((class color) (background light)) (:background "grey95")) (((class color) (background dark)) (:background "grey10")) (t (:background "gray"))))
  `(header-line ((default (:inherit (mode-line))) (((type tty)) (:underline (:color foreground-color :style line) :inverse-video nil)) (((class color grayscale) (background light)) (:box nil :foreground "grey20" :background "grey90")) (((class color grayscale) (background dark)) (:box nil :foreground "grey90" :background "grey20")) (((class mono) (background light)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "black" :background "white")) (((class mono) (background dark)) (:underline (:color foreground-color :style line) :box nil :inverse-video nil :foreground "white" :background "black"))))
  `(tooltip ((((class color)) (:inherit (variable-pitch) :foreground "black" :background "lightyellow")) (t (:inherit (variable-pitch)))))
  `(lazy-highlight ((((class color) (min-colors 88) (background light)) (:background "paleturquoise")) (((class color) (min-colors 88) (background dark)) (:background "paleturquoise4")) (((class color) (min-colors 16)) (:background "turquoise3")) (((class color) (min-colors 8)) (:background "turquoise3")) (t (:underline (:color foreground-color :style line)))))
  `(match ((((class color) (min-colors 88) (background light)) (:background "yellow1")) (((class color) (min-colors 88) (background dark)) (:background "RoyalBlue3")) (((class color) (min-colors 8) (background light)) (:foreground "black" :background "yellow")) (((class color) (min-colors 8) (background dark)) (:foreground "white" :background "blue")) (((type tty) (class mono)) (:inverse-video t)) (t (:background "gray"))))
  `(next-error ((t (:inherit (region))))))

(provide-theme `cosmos-dark)
;;; cosmos-dark-theme.el ends here
