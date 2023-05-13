#!/bin/sh
if [ ! -f UUID ]; then
  UUID="13e64f26-1879-42d5-b97a-ca9ca53d379c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

