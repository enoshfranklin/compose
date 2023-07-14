#!/bin/bash
while true; do
    nc -l -p 80 && nc -l -p 3306 >/dev/null 2>&1
done
