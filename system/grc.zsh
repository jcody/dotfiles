# GRC colorizes nifty unix tools all over the place
if (( $+commands[grc] )) && (( $+commands[brew] ))
then
  # Set kubectl path (if it exists).
  #   NOTE: This is a workaround to ensure GRC uses the correct kubectl binary on M1.
  if (( $+commands[kubectl] )); then
    KUBECTL_PATH=$(command -v kubectl)
    export KUBECTL_PATH
  fi
  source `brew --prefix`/etc/grc.zsh
fi
