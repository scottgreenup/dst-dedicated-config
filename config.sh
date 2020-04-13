#!/usr/bin/env bash

set -euo pipefail

# This name can be unique and allow you to run multiple servers on the same VM.
export COMPOSE_PROJECT_NAME="zazzle"

# This gives your DST server a name/desc and shows up in "Browse Games"
export SERVER_NAME="Team Zazzle"
export SERVER_DESC="For the Zazzlers! You know who you are!"

# These are the ports to run for the overworld and underworld (i.e. caves)
# Make sure you port forward these in NAT and open them in your firewall
export SERVER_OVERWORLD_PORT="11001"
export SERVER_UNDERWORLD_PORT="11002"

# How many players do you want?
export MAX_PLAYERS="20"

# How often will the server run the update loop. Higher is smoother but requires
# beefier hardware. Valid values are 15, 30, 60.
export TICK_RATE="60"


