#!/bin/bash
echo "describe cluster;" > /tmp/dc
for i in {1..5}; do
  echo Attempt $i
  if cassandra-cli -f /tmp/dc 2>&1 | grep "Cluster Information"; then
    exit 0
  else
    sleep 10
  fi
done
exit 1

