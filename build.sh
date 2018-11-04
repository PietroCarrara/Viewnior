#! /bin/sh
#
# build.sh
# Copyright (C) 2018 pietro <pietro@the-arch>
#
# Distributed under terms of the MIT license.
#

rm -rf builddir
meson --prefix=/usr builddir
cd builddir
ninja

if [[ $1 == 'install' ]]; then
	sudo ninja install
else
	./src/viewnior '/home/pietro/Pictures/Wallpapers/Flowers'
fi

cd ..
