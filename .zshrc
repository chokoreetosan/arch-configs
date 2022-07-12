# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch notify
unsetopt autocd beep extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/abhishek/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export "PATH=$HOME/.local/bin:$PATH"
export "VISUAL=lvim"
export "EDITOR=$VISUAL"
export "STARSHIP_CONFIG=$HOME/.config/starship/starship.toml"

alias ls='lsd'
export LIBGL_ALWAYS_SOFTWARE=1
export XDG_STATE_HOME=$HOME/.local/state/
export LOG_PATH=$XDG_STATE_HOME/logs/

eval "$(starship init zsh)"
