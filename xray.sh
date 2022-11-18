#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6dfb5d0f-93f4-495d-9ba3-289aa83248ac"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

