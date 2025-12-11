#!/bin/bash

cd /home/$USER/.local/share/Steam/ubuntu12_32/steam-runtime/pinned_libs_64
mv libcurl.so.4 libcurl.so.4.bak
ln -s /usr/lib/x86_64-linux-gnu/libcurl.so.4 libcurl.so.4

if [ -z "$SteamAppId" ]; then
  echo "xiv launcher - Exiting because no steam app id"
  exit 0
fi

echo Begin
flatpak run --branch=stable --arch=x86_64 --command=xivlauncher dev.goats.xivlauncher
echo End
exit 0