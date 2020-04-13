#!/usr/bin/env bash

set -euo pipefail
cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"

function bootstrap() {
    # Ensure that we have directories to mount
    mkdir -p overworld underworld
}

function start() {
    source ./config.sh
    docker-compose up -d
}

function main() {
    bootstrap
    start
}

main
