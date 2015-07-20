#!/bin/bash

# Cleanup
rm -f "/var/lib/plexmdiaserver/Library/Application/Plex Media Server/plexmediaserver.pid"

# Start DBus
# http://www.freedesktop.org/wiki/Software/dbus/
mkdir -p /var/run/dbus
chown dbus:dbus /var/run/dbus
dbus-uuidgen --ensure
dbus-daemon --system --fork
sleep 1

export PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR=/var/lib/plexmediaserver/Library/Application Support
export PLEX_MEDIA_SERVER_HOME=/usr/lib/plexmediaserver
export PLEX_MEDIA_SERVER_MAX_PLUGIN_PROCS=6
export PLEX_MEDIA_SERVER_TMPDIR=/tmp
export LD_LIBRARY_PATH=/usr/lib/plexmediaserver
#export LC_ALL=en_US.UTF-8
#export LANG=en_US.UTF-8
/bin/sh -c '/usr/bin/test -d "${PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR}" || /bin/mkdir -p "${PLEX_MEDIA_SERVER_APPLICATION_SUPPORT_DIR}"'
/bin/sh -c '/usr/lib/plexmediaserver/Plex\ Media\ Server'
