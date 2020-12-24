# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

alias history="history 0"

# The rest of my fun git aliases
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
# git diff pretty:
# diff-so-fancy (https://github.com/stevemao/diff-so-fancy)
alias gdp='git diff --color | diff-highlight | diff-so-fancy'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gpm='git checkout master; git pull origin master'
alias grbm='git checkout master; git pull origin master; git checkout -; git rebase master'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
alias glb="git for-each-ref --sort='-authordate:iso8601' --format='%(authordate:relative):%09%(refname:short)' refs/heads"
alias gclean="git branch --merged | egrep -v '(^\*|master)' | xargs git branch -d"
