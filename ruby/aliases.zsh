# Rails aliases:
alias rc="rails console"
alias migrate="bundle exec rake db:migrate db:test:prepare"
alias seed="bundle exec rake db:seed"
alias remigrate="bundle exec rake db:migrate db:migrate:redo db:schema:dump db:test:prepare"

# Other Ruby aliases:
alias be="bundle exec"
alias cop="rubocop -c ~/code/fountain/monolith/.rubocop.yml"
alias hound="git diff --name-only | xargs rubocop -c ~/code/fountain/monolith/.rubocop.yml"
