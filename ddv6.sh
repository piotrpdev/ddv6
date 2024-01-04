#!/bin/sh

if [ -z "$WEBHOOK_URL" ]; then
    echo "WEBHOOK_URL is not set"
    exit 1
fi

while true; do
    IPV4_FIELD="{\"name\":\"Public IPv4 Address\",\"value\":\"\`$(curl -s https://api.ipify.org)\`\",\"inline\":true}"
    IPV6_FIELD="{\"name\":\"Public IPv6 Address\",\"value\":\"\`$(curl -s https://api64.ipify.org)\`\",\"inline\":true}"
    JSON_DATA="{\"embeds\":[{\"fields\":[$IPV4_FIELD,$IPV6_FIELD]}]}"

    date
    echo $IPV4_FIELD
    echo $IPV6_FIELD
    echo $JSON_DATA

    curl -s -H "Content-Type: application/json" -X POST -d "$JSON_DATA" $WEBHOOK_URL

    echo "Sleeping for ${INTERVAL-86400} seconds"
    sleep ${INTERVAL-86400}
done
