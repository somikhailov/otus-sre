#!/bin/bash
QUERY=$(curl -s http://api.open-notify.org/iss-now.json)
MESSAGE=$(echo $QUERY | jq -r .message)
IIS_POSITION_LATITUDE=$(echo $QUERY | jq -r .iss_position.latitude)
IIS_POSITION_LONGITUDE=$(echo $QUERY | jq -r .iss_position.longitude)
TIMESTAMP=$(echo $QUERY | jq -r .timestamp)

if [ "$MESSAGE" == "success" ]
then
cat << EOF
# HELP iis_position_latitude The current latitude of the space station with a unix timestamp for the time the location was valid.
# TYPE iis_position_latitude gauge
iis_position_latitude $IIS_POSITION_LATITUDE $TIMESTAMP
# HELP iis_position_longitude The current longitude of the space station with a unix timestamp for the time the location was valid.
# TYPE iis_position_longitude gauge
iis_position_longitude $IIS_POSITION_LONGITUDE $TIMESTAMP
EOF
fi

