#!/bin/bash

NAME=$(cat "./index.theme" | grep "Name" | sed 's/.*=\(.*\)/\1/')
TARGET="/usr/share/themes/$NAME"

if [[ "$NAME" == "" ]]; then
    echo "Invalid Theme name."
    exit
fi

# Create required directories
mkdir -p "$TARGET/gtk-3.0"

# Move theme info to the root theme dir
cp "./index.theme" "$TARGET/index.theme"

# Copy main assets to the gtk folder
cp -r "./assets" "$TARGET/gtk-3.0/assets"

# Copy css file to the gtk folder
cp "./gtk.css" "$TARGET/gtk-3.0/gtk.css"

# Create empty gtk2 theme
mkdir "$TARGET/gtk-2.0"
touch "$TARGET/gtk-2.0/gtkrc"
