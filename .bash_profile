#
# ~/.bash_profile
#
export LIBGL_ALWAYS_SOFTWARE=1 alacritty
export PATH=~/.npm-global/bin:$PATH
export PATH=~/.local/bin:$PATH
export TERMINAL=lvim
export VISUAL=lvim
export EDITOR="$VISUAL"
[[ -f ~/.bashrc ]] && . ~/.bashrc
exec zsh
