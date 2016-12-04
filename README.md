# Arc-Undead Theme

Arc-Undead is a modification of the original Arc-Dark theme (https://github.com/horst3180/arc-theme). It is a black/red theme focused on being easy to machine-edit using as little different colors as possible while still looking great.<br>
Like the original Arc Themes Arc-Undead is a flat theme for GTK 3 and GTK2. Neither transparency, gnome-shell, unity, budgie, pantheon, xfce, mate or any other DEs are supported besides standard GTK theming.

## Screenshots

### GTK3
![A screenshot of the Arc-Undead theme](http://i.imgur.com/fKas1Fa.png)
![A screenshot of the Arc-Undead theme](http://i.imgur.com/XkU5P2N.png)

### GTK2
![A screenshot of the Arc-Undead theme](http://i.imgur.com/IOCd4B0.png)
![A screenshot of the Arc-Undead theme](http://i.imgur.com/uELgaQL.png)

## Installation

### Packages

Currently there is no package of Arc-Undead in any official or inofficial repository. If you would like to maintain a repository for your distribution please contact me first.

A version build with x86_64 Archlinux is available in my dotfiles:<br>
https://gitlab.com/chrisduerr/dotfiles/tree/master/templates/arc-undead

### Manual Installation

To build the theme the follwing packages are required:
* `autoconf`
* `automake`
* `pkg-config` or `pkgconfig` if you use Fedora
* `libgtk-3-dev` for Debian based distros or `gtk3-devel` for RPM based distros
* `git` if you want to clone the source directory

**Note:** If your distribution doesn't ship separate development packages you just need GTK 3 instead of the `-dev` packages.

For the theme to function properly, install the following
* GTK2, GTK 3.20 - 3.22
* The `gnome-themes-standard` package (?)
* The murrine engine. This has different names depending on your distro.
  * `gtk-engine-murrine` (Arch Linux)
  * `gtk2-engines-murrine` (Debian, Ubuntu, elementary OS)
  * `gtk-murrine-engine` (Fedora)
  * `gtk2-engine-murrine` (openSUSE)
  * `gtk-engines-murrine` (Gentoo)

Install the theme with the following commands

#### 1. Get the source

Clone the git repository with

    git clone https://gitlab.com/chrisduerr/arc-undead --depth 1 && cd arc-undead

#### 2. Build and install the theme

    ./autogen.sh --prefix=/usr
    sudo make install

Other options to pass to autogen.sh:

    --disable-gtk2          Disable GTK2 Support
    --disable-gtk3          Disable GTK3 Support
    --with-gnome=<version>  Build the theme for a specific Gnome version (3.20, 3.22)
                            Note: Normally the correct version is detected automatically
                                  and this option should not be needed.

After the installation is complete you can activate the theme with `lxappearance` or a similar program by selecting `Arc-Dark` as Window/GTK+ theme.

## Uninstall

Run

    sudo make uninstall

from the cloned git repository, or

    sudo rm -rf /usr/share/themes/{Arc,Arc-Darker,Arc-Dark}

## Extras

### Original Arc Icon Theme
The Arc icon theme is available at https://github.com/horst3180/arc-icon-theme

## Troubleshooting

If you have issues installing the pre-build theme try the [Manual Installation](#manual-installation)

## Bugs
If you find a bug, please report it at https://gitlab.com/chrisduerr/arc-undead/issues

## License
Arc and Arc-Undead are available under the terms of the GPL-3.0. See `COPYING` for details.
