#!/bin/sh
if [ ! -f UUID ]; then
  UUID="022b410f-a8d1-4a70-b2cc-fbbb6487f3c9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

