# Gruvbox

A port of the gruvbox colour scheme for Vim: <https://github.com/morhetz/gruvbox>

## Installation

1. Download `gruvbox-theme.el`, and put it in `~/.emacs.d/themes`. For example:
   ```shell
   curl https://raw.github.com/leemachin/emacs-gruvbox-theme/master/gruvbox-theme.el > ~/.emacs.d/themes/gruvbox-theme.el
   ```

2. Tell Emacs where to find themes in your `init.el` or `.emacs` file:
   ```lisp
   (add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
   ```

3. Enable the theme:
   ```
   M-x load-theme RET gruvbox
   ```

## Preview

![](http://f.cl.ly/items/2S0w3d181S060g0q0C2a/Screen%20Shot%202013-08-21%20at%2014.21.44.png)
