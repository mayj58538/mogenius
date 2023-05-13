#!/bin/sh
if [ ! -f UUID ]; then
  UUID="bb530a3c-ce84-4b7a-86d0-861e13c61f44"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

