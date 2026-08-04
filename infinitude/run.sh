#!/bin/sh

echo "===== Starting Infinitude Home Assistant Add-on wrapper ====="

if [ ! -f /data/options.json ]; then
    echo "ERROR: /data/options.json not found"
    exit 1
fi

echo "===== Add-on options ====="
cat /data/options.json
echo

# Read Home Assistant add-on options
APP_SECRET=$(grep -o '"app_secret":[^,}]*' /data/options.json | cut -d: -f2 | tr -d ' "')
PASS_REQS=$(grep -o '"pass_reqs":[^,}]*' /data/options.json | cut -d: -f2 | tr -d ' "')
MODE=$(grep -o '"mode":[^,}]*' /data/options.json | cut -d: -f2 | tr -d ' "')

MQTT_BROKER=$(grep -o '"mqtt_broker":[^,}]*' /data/options.json | cut -d: -f2- | tr -d ' "')
MQTT_USER=$(grep -o '"mqtt_user":[^,}]*' /data/options.json | cut -d: -f2- | tr -d ' "')
MQTT_PASS=$(grep -o '"mqtt_pass":[^,}]*' /data/options.json | cut -d: -f2- | tr -d ' "')
MQTT_PREFIX=$(grep -o '"mqtt_prefix":[^,}]*' /data/options.json | cut -d: -f2- | tr -d ' "')
MQTT_TOPIC=$(grep -o '"mqtt_topic":[^,}]*' /data/options.json | cut -d: -f2- | tr -d ' "')

export APP_SECRET
export PASS_REQS
export MODE

export MQTT_BROKER
export MQTT_USER
export MQTT_PASS
export MQTT_PREFIX
export MQTT_TOPIC

echo "===== MQTT configuration ====="
echo "MQTT_BROKER=${MQTT_BROKER}"
echo "MQTT_USER=${MQTT_USER}"
echo "MQTT_PREFIX=${MQTT_PREFIX}"
echo "MQTT_TOPIC=${MQTT_TOPIC}"

echo "===== Starting Infinitude ====="

exec /infinitude/entrypoint.sh