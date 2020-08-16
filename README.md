# Dotfiles

Config files used on a [Gentoo][gentoo]-based machine.

---

## i3wm

Enable Layman's `sk-overlay` Overlay.

    emerge -a x11-wm/i3 x11-misc/i3blocks x11-misc/i3lock x11-misc/xautolock x11-misc/rofi x11-misc/picom media-gfx/feh app-admin/conky =media-fonts/fontawesome-4.7.0 x11-apps/glava

## urxvt

Setup a custom Portage Overlay from [github.com/kajzersoze/rxvt-unicode][urxvt].

Download modified Powerline fonts from [github.com/powerline/fonts][powerline].

Enable Layman's `jorgicio` Overlay.

    emerge -a x11-terms/rxvt-unicode x11-misc/urxvt-perls app-shells/starship

## vim

    emerge -a app-editors/vim app-vim/pathogen app-vim/airline app-vim/airline-themes

## misc

    emerge -a x11-misc/redshift x11-apps/xrandr sys-power/acpilight x11-misc/xkblayout-state x11-misc/dunst media-gfx/maim x11-libs/gtk+ sys-fs/udiskie gnome-extra/nm-applet app-misc/mc

[gentoo]: https://gentoo.org
[urxvt]: https://github.com/kajzersoze/rxvt-unicode
[powerline]: https://github.com/powerline/fonts
