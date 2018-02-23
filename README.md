# dotfiles

Setting up my .files (work in progress). Getting ideas from multiples sites such as:

* [Getting Started With Dotfiles](https://medium.com/@webprolific/getting-started-with-dotfiles-43c3602fd789) 
* [mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [jessfraz/dotfiles](https://github.com/jessfraz/dotfiles)
* [webpro/dotfiles](https://github.com/webpro/dotfiles)

## Clone with Git

    git clone https://github.com/nleiva/dotfiles.git ~/.dotfiles

## Install

    source ~/.dotfiles/install.sh

or

    make

## Remove ANSI color codes from iTerm2 logs

```console
sed -i $'s,\x1b\\[[0-9;]*[a-zA-Z],,g' test.log
```

```console
sed -i $'s,\]0;,,g' test.log
```
