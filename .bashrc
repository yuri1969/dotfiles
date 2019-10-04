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

# Register Starship if not inside a TTY
tty | grep -q "tty" || eval "$(starship init bash)"

# Using i3wm leaves this variable out
export XDG_CONFIG_HOME="${HOME}/.config"

# Setup Apache Maven
export MAVEN_HOME="${HOME}/dev/apache-maven"
export MAVEN_OPTS="-Xms1G -Xmx4G"

export CHROME_BIN="/usr/bin/chromium"

# Use 'urxvtc' as the i3wm terminal
export TERMINAL="urxvtc"

# Style Midnight
[[ -s /usr/libexec/mc/mc.sh ]] && source /usr/libexec/mc/mc.sh
export MC_SKIN="${HOME}/.mc/solarized.ini"

# Register SDKman
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"

# Fix the PATH
export PATH="${HOME}/.cargo/bin:${MAVEN_HOME}/bin:${PATH}"
