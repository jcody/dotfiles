alias reload!='. ~/.zshrc'

### Directories
alias ht="cd ~/Projects/ht"
alias cfa="cd ~/Projects/codeforamerica"
alias exercism="/Users/jcody/Projects/exercism/exercism"

### Terminal
alias vi="vim"
alias s.="subl ."
alias clr="clear"
alias ls="gls -F --color"
alias l="gls -lAh --color"
alias ll="gls -l --color"
alias la='gls -A --color'


### Git
alias gb='git branch'
alias gs='git status -sb'
alias gaa='git add -A'
alias glg="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gco='git checkout'

### Ruby
alias rc='rails console'
alias migrate="bundle exec rake db:migrate db:test:prepare"
alias seed="bundle exec rake db:seed"
alias remigrate="bundle exec rake db:migrate db:migrate:redo db:schema:dump db:test:prepare"
