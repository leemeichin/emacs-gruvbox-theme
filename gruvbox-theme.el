;;; gruvbox-theme.el --- A retro-groove colour theme for Emacs 24+

;; Author: Lee Machin <ljmachin@gmail.com>
;; URL: http://github.com/leemachin/emacs-gruvbox-theme
;; Version 1.0

;; Copyright (C) 2012-2013 morhetz, Lee Machin

;; Permission is hereby granted, free of charge, to any person obtaining a copy
;; of this software and associated documentation files (the "Software"), to deal
;; in the Software without restriction, including without limitation the rights
;; to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
;; copies of the Software, and to permit persons to whom the Software is
;; furnished to do so, subject to the following conditions:
;;
;; The above copyright notice and this permission notice shall be included in
;; all copies or substantial portions of the Software.
;;
;; THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
;; IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
;; FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
;; AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
;; LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
;; OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
;; THE SOFTWARE.

;;; Commentary:

;; A port of the Vim theme gruvbox, using the deftheme support in Emacs 24+.

;;; Credits:

;; morhetz <morhetz@gmail.com> wrote the original version, for Vim, which this theme
;; is based on.
;; https://github.com/morhetz/gruvbox

(unless (>= 24 emacs-major-version)
  (error "requires Emacs 24 or later."))

(deftheme gruvbox
  "A retro-groove colour theme")

(let ((gruvbox-background "#282828")
      (gruvbox-foreground "#ebdbb2")
      (gruvbox-dark-1     "#3c3836")
      (gruvbox-dark-2     "#504945")
      (gruvbox-dark-3     "#665c54")
      (gruvbox-dark-4     "#7c6f64")
      (gruvbox-light-1    "#fdf4c1")
      (gruvbox-light-2    "#d5c4a1")
      (gruvbox-light-3    "#bdae93")
      (gruvbox-light-4    "#a89984")
      (gruvbox-red        "#fb4934")
      (gruvbox-orange     "#fe8019")
      (gruvbox-yellow     "#fabd2f")
      (gruvbox-green      "#b8bb26")
      (gruvbox-aqua       "#8ec07c")
      (gruvbox-blue       "#83a598")
      (gruvbox-purple     "#d3869b"))

  (custom-theme-set-faces
   'gruvbox

   `(default ((t (:background ,gruvbox-background :foreground ,gruvbox-foreground))))
   `(cursor  ((t (:background ,gruvbox-light-2))))
   `(hl-line ((t (:background ,gruvbox-dark-3))))
   `(mode-line-inactive ((t (:box nil :foreground ,gruvbox-background :background ,gruvbox-dark-4))))
   `(mode-line ((t (:box nil :foreground ,gruvbox-light-1 :background ,gruvbox-dark-4))))
   `(fringe ((t (:background ,gruvbox-background))))
   `(linum ((t (:background ,gruvbox-background))))
   `(region ((t (:background ,gruvbox-dark-1))))
   `(minibuffer-prompt ((default (:foreground ,gruvbox-green :background ,gruvbox-background :bold t))))
   `(ag-hit-face ((t (:foreground ,gruvbox-green))))
   `(ag-match-face ((t (:foreground ,gruvbox-red))))

   `(font-lock-builtin-face ((t (:foreground ,gruvbox-orange))))
   `(font-lock-constant-face ((t (:foreground ,gruvbox-purple))))
   `(font-lock-comment-face ((t (:foreground ,gruvbox-dark-4))))
   `(font-lock-function-name-face ((t (:foreground ,gruvbox-green))))
   `(font-lock-keyword-face ((t (:foreground ,gruvbox-red))))
   `(font-lock-string-face ((t (:foreground ,gruvbox-green))))
   `(font-lock-variable-name-face ((t (:foreground ,gruvbox-blue))))
   `(font-lock-type-face ((t (:foreground ,gruvbox-purple))))
   `(font-lock-warning-face ((t (:foreground ,gruvbox-red :bold t))))))

(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name)))
  (when (not window-system)
    (custom-set-faces '(default ((t (:background "nil")))))))

(provide-theme 'gruvbox)

;; Local Variables:
;; no-byte-compile: t
;; End:
