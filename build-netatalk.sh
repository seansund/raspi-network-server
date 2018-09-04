#!/bin/bash

cd src/netatalk*

./configure \
  --with-init-style=debian-systemd \
  --without-libevent \
  --without-tdb \
  --with-cracklib \
  --enable-krbV-uam \
  --with-pam-confdir=/etc/pam.d \
  --with-dbus-daemon=/usr/bin/dbus-daemon \
  --with-dbus-sysconf-dir=/etc/dbus-1/system.d \
  --with-tracker-pkgconfig-version=1.0

make

