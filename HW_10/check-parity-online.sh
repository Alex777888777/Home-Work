#!/bin/bash
# monitor_nginx.sh

STATUS_URL="http://localhost/nginx_status"

get_metric() {
    curl -s "$STATUS_URL" | grep "$1" | awk '{print $NF}'
}

echo "=== Nginx Status ==="
echo "Active connections: $(get_metric 'Active connections:')"
echo "Reading: $(get_metric 'Reading:')"
echo "Writing: $(get_metric 'Writing:')" 
echo "Waiting: $(get_metric 'Waiting:')"
echo "Requests: $(curl -s "$STATUS_URL" | grep 'requests' | awk '{print $3}')"

if ! curl -s -f "$STATUS_URL" > /dev/null; then
    echo "Ошибка: Не удалось получить статус Nginx по URL: $STATUS_URL"
    exit 1
fi
