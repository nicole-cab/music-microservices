#!/bin/sh
ID="~Everybody+(Backstreet's+Back)+(Radio+Edit)"
AUDIO=`base64 -i "example_track_segments/$ID".wav`
URL=localhost:3002/cooltown
echo "{ \"Audio\":\"$AUDIO\" }" > input
curl -v -X POST -d @input $URL
