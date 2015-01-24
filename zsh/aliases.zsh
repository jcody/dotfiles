alias reload!='. ~/.zshrc'
alias dfs='cd ~/.dotfiles'

### Directories
alias code="cd ~/code"
alias ht="cd ~/code/ht"
alias hts="cd ~/code/ht/hotelstonight"
alias cfa="cd ~/code/codeforamerica"
alias exercism="/Users/jcody/code/exercism/exercism"

### HT Specific
alias ht-foreman="foreman start -c --formation='resque=1,sidekiq=1,es_indexer=1,rates_service=1'"
alias ssh-prod="ey ssh --environment='hoteltonight_PRODUCTION' --account='Hotel-Tonight'"
alias ssh-stage="ssh deploy@ec2-54-241-76-57.us-west-1.compute.amazonaws.com"

### Terminal
alias vi="vim"
alias s.="subl ."
alias clr="clear"
#alias ls="gls -F --color"
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
