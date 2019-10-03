# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
    source ~/.bashrc
fi

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
