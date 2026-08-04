#!/bin/bash

echo "***** CUSTOM INFINTUDE STARTUP *****"

echo "Filesystem:"
ls -la /

echo "Data:"
ls -la /data || true

echo "Options:"
cat /data/options.json || true

export APP_SECRET=$(jq -r '.app_secret' /data/options.json)
export PASS_REQS=$(jq -r '.pass_reqs' /data/options.json)
export MODE=$(jq -r '.mode' /data/options.json)

export MQTT_BROKER=$(jq -r '.mqtt_broker' /data/options.json)
export MQTT_USER=$(jq -r '.mqtt_user' /data/options.json)
export MQTT_PASS=$(jq -r '.mqtt_pass' /data/options.json)
export MQTT_PREFIX=$(jq -r '.mqtt_prefix' /data/options.json)
export MQTT_TOPIC=$(jq -r '.mqtt_topic' /data/options.json)

echo "MQTT:"
echo "Broker=${MQTT_BROKER}"
echo "Prefix=${MQTT_PREFIX}"
echo "Topic=${MQTT_TOPIC}"

exec /infinitude/entrypoint.sh