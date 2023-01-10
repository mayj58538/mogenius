#!/bin/sh
if [ ! -f UUID ]; then
  UUID="191cc45a-0420-499d-ba92-90b30343ddd7"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

