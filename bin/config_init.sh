#!/bin/sh -e
APP="vsftpd"

echo "Updating $APP configuration"

TEMPLATE="/tmp/vsftpd.conf"
CONFIG="/etc/vsftpd.conf"

if [ ! -f "$TEMPLATE" ]; then
    echo "Error: template does not exist at $TEMPLATE" >&2
    exit 2
fi

cat "$TEMPLATE" | envsubst > $CONFIG
