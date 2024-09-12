# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# default editor (for yazi)
export EDITOR=nvim

eval "$(zoxide init zsh)" # init zoxide (for yazi)

alias git-df='/usr/bin/git --git-dir=$HOME/dev/df/df.git --work-tree=$HOME'


