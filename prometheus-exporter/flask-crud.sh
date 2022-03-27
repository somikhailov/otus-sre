#!/bin/bash
QUERY=$(curl -s -o /dev/null -w "%{json}" http://192.168.121.10)

METHOD=$(echo $QUERY | jq -r .method)
CODE=$(echo $QUERY | jq -r .http_code)
RESPONSE_TIME=$(echo $QUERY | jq -r .time_total)

cat << EOF
# HELP http_requests_total The total number of HTTP requests.
# TYPE http_requests_total counter
http_requests_total{method="$METHOD",code="$CODE"} 1

EOF

if [ "${CODE:0:1}" != "5" ]
then
cat << EOF
# HELP http_requests_none_5xx_total The total number of HTTP requests.
# TYPE http_requests_none_5xx_total counter
http_requests_none_5xx_total{method="$METHOD",code="$CODE"} 1

EOF
fi

cat << EOF
# HELP http_response_total_time The total time for response app.
# TYPE http_response_total_time gauge
http_response_total_time $RESPONSE_TIME

EOF