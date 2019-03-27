#!/bin/bash
curl -X POST \
   ${consul_host} \
  -H 'Content-Type: application/json' \
  -H 'cache-control: no-cache' \
  -d '{
  "name":"${name}",
  "age": "${age}",
  "platform":"${platform}",
  "id":"${uuid()}"
}'