alias reload!=". ~/.zshrc"
alias dfs="cd ~/.dotfiles"
alias dotfiles="cd ~/.dotfiles"

### Directories
alias code="cd ~/code"
alias ht="cd ~/code/ht"
alias hts="cd ~/code/ht/hotelstonight"
alias cfa="cd ~/code/codeforamerica"

### AnyPerk Specific
alias any="cd ~/code/anyperk"
alias ap="cd ~/code/anyperk/site"
alias vb="cd  ~/code/anyperk/development; vagrant ssh"
alias hris="cd ~/code/go/src/github.com/anyperk/anyperk-hris"

### Terminal
alias vi="vim"
alias subl="sublime"
alias s.="subl ."
alias clr="clear"
alias l="gls -lAh --color"
alias ll="gls -l --color"
alias la="gls -A --color"

### Git
alias gb="git branch"
alias gs="git status -sb"
alias gaa="git add -A"
alias glg="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp="git push origin HEAD"
alias gd="git diff"
alias gc="git commit"
alias gco="git checkout"

### Ruby
alias rc="rails console"
alias migrate="bundle exec rake db:migrate db:test:prepare"
alias seed="bundle exec rake db:seed"
alias remigrate="bundle exec rake db:migrate db:migrate:redo db:schema:dump db:test:prepare"

### Ops
alias comp="docker-compose"
alias be="bundle exec"
alias cop="rubocop -c ~/code/anyperk/site/.rubocop.yml"
alias hound="git diff --name-only | xargs rubocop -c ~/code/anyperk/site/.rubocop.yml"
