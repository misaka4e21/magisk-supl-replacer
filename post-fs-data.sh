#!/system/bin/sh

MODDIR=${0%/*}

SUPL_HOST=supl.qxwz.com
NTP_SERVER=cn.pool.ntp.org

# For new "Treble enabled" devices
if [ -f /system/vendor/etc/gps.conf ]; then
  cp /system/vendor/etc/gps.conf "${MODDIR}/system/vendor/etc/gps.conf"
  sed -i "s/^SUPL_HOST=.*/SUPL_HOST=${SUPL_HOST}/" "${MODDIR}/system/vendor/etc/gps.conf"
  sed -i "s/^NTP_SERVER=.*/NTP_SERVER=${NTP_SERVER}/" "${MODDIR}/system/vendor/etc/gps.conf"
  if [ -f "${MODDIR}/system/vendor/etc/.gitkeep" ]; then
    rm "${MODDIR}/system/vendor/etc/.gitkeep"
  fi
else
  if [ -f "${MODDIR}/system/vendor/etc/.gitkeep" ]; then
    rm "${MODDIR}/system/vendor/etc/.gitkeep"
  fi
  rmdir "${MODDIR}/system/vendor/etc" && rmdir "${MODDIR}/system/vendor"
fi

# For older devices
if [ -f /system/etc/gps.conf ]; then
  cp /system/etc/gps.conf "${MODDIR}/system/etc/gps.conf"
  sed -i "s/^SUPL_HOST=.*/SUPL_HOST=${SUPL_HOST}/" "${MODDIR}/system/etc/gps.conf"
  sed -i "s/^NTP_SERVER=.*/NTP_SERVER=${NTP_SERVER}/" "${MODDIR}/system/etc/gps.conf"
  if [ -f "${MODDIR}/system/etc/.gitkeep" ]; then
    rm "${MODDIR}/system/etc/.gitkeep"
  fi
else
  if [ -f "${MODDIR}/system/etc/.gitkeep" ]; then
    rm "${MODDIR}/system/etc/.gitkeep"
  fi
  rmdir "${MODDIR}/system/etc"
fi
