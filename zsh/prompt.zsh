autoload colors && colors
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

if (( $+commands[git] ))
then
  git="$commands[git]"
else
  git="/usr/bin/git"
fi

git_branch() {
  echo $($git symbolic-ref HEAD 2>/dev/null | awk -F/ {'print $NF'})
}

git_dirty() {
  st=$($git status 2>/dev/null | tail -n 1)
  if [[ $st == "" ]]
  then
    echo ""
  else
    if [[ "$st" =~ ^nothing ]]
    then
      echo "on %{$fg_bold[yellow]%}$(git_prompt_info)%{$reset_color%}"
    else
      echo "on %{$fg_bold[red]%}$(git_prompt_info)%{$reset_color%}"
    fi
  fi
}

git_prompt_info () {
 ref=$($git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

directory_name() {
  echo "%{$fg_bold[green]%}$PWD%{$reset_color%}"
}

user_name() {
  echo "%{$fg_bold[red]%}$USER%\:%{$reset_color%}"
}

export PROMPT=$'\n$(user_name) $(directory_name) $(git_dirty)\n› '

set_prompt () {
  export RPROMPT="%{$fg_bold[red]%}%{$reset_color%}"
}


precmd() {
  title "zsh" "%m" "%55<...<%~"
  set_prompt
}
