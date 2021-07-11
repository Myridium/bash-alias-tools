# Loads the 'make-autocompleted-alias' function.
# and the 'add-source-path' function.
source ~/.bashrc.d/.bashrc_automatic_aliases
alias maa='make-autocompleted-alias'

# Usages of maa:
# maa aliasname command arg1 arg2
# maa -f sourcefile aliasname compcommand arg1 arg2
# maa -o 'dothis' aliasname compcommand arg1 arg2

### Aliases
# Vim/NeoVim
maa vim nvim
maa v nvim
# ls
maa , ls --color=auto -lah --group-directories-first
maa l ls --color=auto -lh  --group-directories-first
# redshift
maa rs redshift -O 3000 -b 0.75
maa rx redshift -x
# password-store
maa pc pass -c
maa -o 'source ~/bin/scripts/passgen' pg pass generate
# docker
maa dc docker container
# systemctl
maa sd sudo systemctl
maa -o 'echo "No passwords for you! -"' passfake pass -c
maa sdu systemctl --user
# clip
maa clip xclip -sel c # Pipe in data (e.g. a file with clip < ./filename ) to copy it to the clipboard
# git
maa gmm git checkout --patch # Git manual merge with another branch (hunk-by-hunk).
maa gsp git status --porcelain=v1
maa gs git status


# Add aliases to source every script in this directory.
# Recursive, ignores hidden files, keeps file extensions in alias names
#add-source-path -e ~/bin/sourceme
