#!/bin/bash

# Load the shell dotfiles, and then some:
for file in ~/.{path,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;

# Autocorrect typos in path names when using `cd`
shopt -s cdspell;

# Enable some Bash 4 features when possible:
# * `autocd`, e.g. `**/qux` will enter `./foo/bar/baz/qux`
# * Recursive globbing, e.g. `echo **/*.txt`
for option in autocd globstar; do
	shopt -s "$option" 2> /dev/null;
done;

# Git stuff
FILE=/usr/share/git-core/contrib/completion/git-prompt.sh
if [ -f "$FILE" ]; then
    source $FILE
fi
 
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

# Change CTRL+C (list all with stty -a), so I can use it for Copy & Paste
stty intr ^x

# Add SSH private keys into the SSH authentication agent (If any -> $count)
count=`ls -1 ~/.ssh/*.pem 2>/dev/null | wc -l`

if [ $count != 0 ]; then
    ssh-add ~/.ssh/*.pem 
fi
export PATH=$PATH:/usr/local/go/bin:$HOME/go/bin
# export PATH="$HOME/.poetry/bin:$PATH"
