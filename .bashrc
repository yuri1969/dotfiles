# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
    # Shell is non-interactive.  Be done now!
    return
fi

# Put your fun stuff here.
# Aliases
if [[ -f ~/.bash_aliases ]]; then
    source ~/.bash_aliases
fi

GPG_TTY="$(tty)" && export GPG_TTY

# not inside a TTY
tty | grep -q "tty" || {
    # Register Atuin
    eval "$(atuin init bash --disable-up-arrow)";
    # Register Starship
    eval "$(starship init bash)";
}

# Set window title - e.g. after closing a SSH session
function set_win_title() {
    echo -ne "\033]0; ${PWD##*/} \007"
}

# Add horizontal line before prompt
function hr_precmd() {
    printf '\033[90;4m%*s\e[0m\n' "$(tput cols)"
}

function custom_starship_precmd() {
    set_win_title;
    hr_precmd;
}

starship_precmd_user_func='custom_starship_precmd'

export SDKMAN_DIR=~/.sdkman
[[ -s ~/.sdkman/bin/sdkman-init.sh ]] && source ~/.sdkman/bin/sdkman-init.sh

# Register Bash preexec
[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh
