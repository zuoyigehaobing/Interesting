# ================ JAN 09: ADD GIT BRANCHES IN PROMPT ===================

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# ================ JAN 09: CHANGED SOME COLOR OR FILES ===================

export CLICOLOR=1
export LSCOLORS=xefxGxDxBxegedabagaced

export PS1="\u \[\033[46m\]\w\[\033[0m\] \t \[\033[32m\]\$(parse_git_branch)\[\033[00m\]
\[\033[41m\]==> \[\033[00m\]"

# ================ JAN 09: ALIAS ADDED ===================
alias doc="cd ~/Documents"
alias dow="cd ~/Downloads"

# make dir and cd inside
mcd () { mkdir -p "$1" && cd "$1";}
# zip a folder
zipf () { zip -r "$1".zip "$1";}
# find a file given file name
where_in_doc () { find ~/Documents -name "$1";}
# go to github
github () { open "https://github.com";}

# ================ Oct 28: UMICH short cuts ===================
#### reserved for university of Michigan
# # go to canvas
# canvas () { open "http://canvas.it.umich.edu";}
# # go to umich_mail
# umich_mail () { open "https://mail.google.com/mail/u/1/#inbox";}
