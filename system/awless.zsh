# https://github.com/wallix/awless
#
# Use awless CLI for AWS management.
awless='$(brew --prefix)/share/zsh/site-functions/_awless'

if test -f $awless
then
  source $awless
fi
