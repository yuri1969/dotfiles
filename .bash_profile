# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
if [[ -f ~/.bashrc ]] ; then
    source ~/.bashrc
fi

# Setup Apache Maven heap
export MAVEN_OPTS="-Xmx4G"

# Setup local Cargo
export CARGO_HOME="${HOME}/.cargo"

export CHROME_BIN="/usr/bin/chromium"

# Setup Ruby
export GEM_HOME="${HOME}/.gem"

# Setup NPM globally installed packages
# Requires: npm config set prefix "${HOME}/.npm-packages"
export NPM_PACKAGES="${HOME}/.npm-packages"

# Register h-m-m
export HMM_HOME="${HOME}/git/h-m-m"

# Use 'urxvtc' as the i3wm terminal
export TERMINAL="urxvtc"

# Do not show space-prefixed commands and dups in the Bash history
export HISTCONTROL="ignoreboth"

# Make GTK+ use the dark theme
export GTK_THEME="Adwaita:dark"

# Force Java apps to the GTK+ L&F
#export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel"

# Style Midnight
[[ -s /usr/libexec/mc/mc.sh ]] && source /usr/libexec/mc/mc.sh
export MC_SKIN="${HOME}/.config/mc/solarized.ini"

# Register SDKman
export SDKMAN_DIR="${HOME}/.sdkman"
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && source "${HOME}/.sdkman/bin/sdkman-init.sh"

# Fix the PATH
export PATH="${HOME}/.local/bin:${MAVEN_HOME}/bin:${CARGO_HOME}/bin:${GEM_HOME}/bin:${NPM_PACKAGES}/bin:${HMM_HOME}:${PATH}"

# Start Keychain - don't load anything
eval "$(keychain --eval --quick --quiet)"

# Start Xorg
[[ -z "$DISPLAY" && $XDG_VTNR -eq 1 ]] && exec startx

