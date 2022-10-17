#!/bin/bash

filename="RAM_testpattern.mem"
pattern="AA"

echo "$pattern">$filename
for i in {1..8191}
do
  echo "$pattern">>$filename
done
