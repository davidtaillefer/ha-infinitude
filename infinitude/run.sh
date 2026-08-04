#!/bin/sh

echo "===== STARTING CUSTOM INFINITUDE WRAPPER ====="

echo "Root filesystem:"
ls -la /

echo "Data directory:"
ls -la /data 2>&1 || true

echo "Options:"
cat /data/options.json 2>&1 || true

sleep 10

exec /infinitude/entrypoint.sh