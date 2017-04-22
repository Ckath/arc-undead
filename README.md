# Arc-Undead
### A simplified GTK3 Arc Theme

Disclaimer: Credit for most of this goes to the original Arc Theme.
You can find it here: https://github.com/horst3180/arc-theme

#### Hacking
This theme aims to be easy to configure and change. If you want to change something, you only have to edit the `gtk.css` file and the `assets.svg` file.
There are only a few colors which have been used in the creation of this theme, these are:
    * #1b1b1b as primary background color
    * #262626 as secondary background color
    * #9e9e9e as primary foreground color
    * #616161 as secondary foreground color
    * #752a2a as highlight color

Once you change the `assets.svg` file you'll have to regenerate the assets. After changing anything, you'll have to reinstall the theme.
If you want to change the name of the theme, all you have to do is edit the `index.theme` file and replace every occurance of `Arc-Undead` with the new name.

#### Installation

For installing this theme you'll first have to generate the assets from the svg file. This is done running `render-asssets.sh`.
This will require `inkscape` to be installed and optionally `optipng` for compressing the output images.
After that all you need to do is run the `install.sh` as root (or any other user that has access to `/usr/share/themes`) and the theme is ready to use.

## Screenshots

![Screenshot](http://i.imgur.com/Q31AUIL.png)
![Screenshot](http://i.imgur.com/qND1ebX.png)
