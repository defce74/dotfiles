# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

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

# export C_INCLUDE_PATH=/usr/include/pipewire-0.3:/usr/include/spa-0.2
# export CPLUS_INCLUDE_PATH=/usr/include/pipewire-0.3:/usr/include/spa-0.2
export CPATH=/usr/include/pipewire-0.3:/usr/include/spa-0.2

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
