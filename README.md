# Dotfiles

Config files used on a [Gentoo][gentoo]-based machine.

---

## i3wm

    emerge -a x11-wm/i3 x11-misc/i3blocks x11-misc/xscreensaver x11-misc/rofi x11-misc/picom media-gfx/feh app-admin/conky

### i3blocks

    emerge -a app-admin/sysstat sys-apps/lm-sensors sys-power/acpi

## urxvt

Download fonts to `~/.local/share/fonts`:

* Nerd Fonts-modified *DejaVu Sans Mono* as *DejaVuSansM Nerd Font* from [github.com/ryanoasis/nerd-fonts][nerdfonts]
* *Symbola* from [fontlibrary.org][symbola]
* *MrRobot* [fontmeme.com][mrrobot]

Refresh the font cache by `fc-cache --force --verbose`.

    emerge -a x11-terms/rxvt-unicode app-shells/starship

## vim

    emerge -a app-editors/vim app-vim/pathogen app-vim/airline app-vim/airline-themes

## display

    emerge -a x11-misc/redshift x11-apps/xrandr sys-power/acpilight x11-misc/colord x11-misc/xiccd

## misc

    emerge -a x11-misc/xkblayout-state x11-misc/dunst media-gfx/maim x11-misc/xclip x11-misc/clipmenu net-misc/keychain sys-fs/udiskie gnome-extra/nm-applet x11-themes/adwaita-icon-theme x11-misc/xdg-utils app-misc/mc app-text/grip app-shells/bash-completion media-sound/ncmpcpp app-crypt/pinentry gnome-extra/nemo

[gentoo]: https://gentoo.org
[nerdfonts]: https://github.com/ryanoasis/nerd-fonts/releases
[symbola]: https://fontlibrary.org/en/font/symbola
[mrrobot]: https://fontmeme.com/fonts/mr-robot-font/
