#!/bin/zsh
volume='/Volumes/MilesHerndonNAS'

if mount|grep $volume; then
  cd
  diskutil unmount $volume
fi

if [ ! -d "$volume"  ]; then
  mkdir $volume
fi

mount_afp 'afp://mark:r3dw4LL93!@server.milesdesign.com/MilesHerndon' $volume 

if mount|grep $volume; then
  echo "Success!"
  cd "$volume/Clients/MILES/"
fi
