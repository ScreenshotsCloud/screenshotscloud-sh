#!/bin/bash
apiKey="$1"
apiSecret="$2"
queryString="$3"
token=`printf '%s' "$queryString" | openssl sha1 -hmac "$apiSecret" | sed 's/^.* //'`

echo "https://api.screenshots.cloud/v1/screenshot/$apiKey/$token?$queryString"