#!/bin/bash
# figlet-entry
set -x
ARGS="$@"
figlet -l  | xargs -L1 -I {} -t figlet -f {} "${ARGS}"