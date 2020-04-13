#!/usr/bin/env bash

set -euo pipefail
cd -P -- "$(dirname -- "${BASH_SOURCE[0]}")"

function main() {
    source ./config.sh
    docker exec -it "${COMPOSE_PROJECT_NAME}-overworld" dst-server console 'c_shutdown()'
    docker exec -it "${COMPOSE_PROJECT_NAME}-underworld" dst-server console 'c_shutdown()'
}

main
