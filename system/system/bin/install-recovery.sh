#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:443f2475167bbc7d9e61e550171c2601703b5dcc; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:b7cd4394f8a07196644a9fc6a59a419799e7c9c0 EMMC:/dev/block/bootdevice/by-name/recovery 443f2475167bbc7d9e61e550171c2601703b5dcc 67108864 b7cd4394f8a07196644a9fc6a59a419799e7c9c0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
