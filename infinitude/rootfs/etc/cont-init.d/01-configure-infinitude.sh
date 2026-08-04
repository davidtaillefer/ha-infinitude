#!/bin/bash

echo "=== FILESYSTEM ==="
ls -la /

echo "=== DATA DIR ==="
ls -la /data

echo "=== CONFIG DIR ==="
ls -la /config

echo "=== OPTIONS.JSON ==="
cat /data/options.json

echo "=== MQTT VARIABLES ==="
echo "MQTT_BROKER=$MQTT_BROKER"
echo "MQTT_USER=$MQTT_USER"
echo "MQTT_PREFIX=$MQTT_PREFIX"
echo "MQTT_TOPIC=$MQTT_TOPIC"

exec /infinitude/entrypoint.sh