#!/bin/bash

NUM1=100
NUM2=200

SUM=$((NUM1 + NUM2))

echo "The sum of $NUM1 and $NUM2 is: $SUM"

#Arrays example
FRUITS=("Apple" "Banana" "Cherry" "Date")
echo "Fruits in the array are: ${FRUITS[@]}"