#!/bin/bash


START_TIME=$(date +%s)

echo "Script started at: $TIMESTAMP"

sleep 10

END_TIME=$(date +%s)
TOTAL_TIME=$((END_TIME -START_TIME))


echo "Script executed at: $TOTAl_TIME"