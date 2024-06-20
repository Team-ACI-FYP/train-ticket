#!/usr/bin/env bash
set -eu

echo
# echo "Please input your repo password of $1"
echo
# docker login --username="$1"

echo
echo "Start pushing image"
echo
docker images | grep -v "$1/ts" | awk 'BEGIN{OFS=":"}{print $1,$2}' | xargs -I {} docker push {}
