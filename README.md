# Dotfiles

Config files used on a [Gentoo][gentoo]-based machine.

---

## i3wm

Enable Layman's `sk-overlay` Overlay.

    emerge -a x11-wm/i3 x11-misc/i3blocks x11-misc/xscreensaver x11-misc/rofi x11-misc/picom media-gfx/feh app-admin/conky x11-apps/glava

### i3blocks

    emerge -a app-admin/sysstat sys-apps/lm-sensors sys-power/acpi

## urxvt

Setup a custom Portage Overlay from [github.com/kajzersoze/rxvt-unicode][urxvt].

Download Nerd Fonts-modified *DejaVu Sans Mono* font from [github.com/ryanoasis/nerd-fonts][nerdfonts] to `~/.local/share/fonts`. Refresh the font cache by `fc-cache --force --verbose`.

Enable Layman's `jorgicio` Overlay.

    emerge -a x11-terms/rxvt-unicode x11-misc/urxvt-perls app-shells/starship

## vim

    emerge -a app-editors/vim app-vim/pathogen app-vim/airline app-vim/airline-themes

## display

    emerge -a x11-misc/redshift x11-apps/xrandr sys-power/acpilight x11-misc/colord x11-misc/xiccd

## misc

    emerge -a x11-misc/xkblayout-state x11-misc/dunst media-gfx/maim x11-misc/xclip x11-misc/clipmenu x11-libs/gtk+ net-misc/keychain sys-fs/udiskie gnome-extra/nm-applet x11-themes/adwaita-icon-theme x11-misc/xdg-utils app-misc/mc

[gentoo]: https://gentoo.org
[urxvt]: https://github.com/kajzersoze/rxvt-unicode
[nerdfonts]: https://github.com/ryanoasis/nerd-fonts/releases
