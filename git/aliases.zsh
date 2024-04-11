# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

alias history="history 0"

# The rest of my fun git aliases
alias gaa="git add -A"
alias gac='git add -A && git commit -m'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gb='git branch'
alias gco='git checkout'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gl='git pull --prune'
alias gp='git push origin HEAD'
alias gd='git diff --color'
alias gc='git commit'
alias gca='git commit -a'
alias gcb='git copy-branch-name'
alias gpm='git checkout master; git pull origin master'
alias grm="git status | grep deleted | awk '{\$1=\$2=\"\"; print \$0}' | \
           perl -pe 's/^[ \t]*//' | sed 's/ /\\\\ /g' | xargs git rm"
alias glb="git for-each-ref --sort='-authordate:iso8601' --format='%(authordate:relative):%09%(refname:short)' refs/heads"
alias gclean="git branch --merged | ggrep -E -v '(^\*|master|main|stable)' | xargs git branch -d"
