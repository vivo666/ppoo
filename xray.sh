#!/bin/sh
if [ ! -f UUID ]; then
  UUID="27dd5e47-5454-4068-8e36-62c813e2dcb9"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

