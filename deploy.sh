#!/bin/bash

echo "${DOCKER_PASSWORD}" | docker login --username christinerobinson101 --password-stdin

docker compose up -d
