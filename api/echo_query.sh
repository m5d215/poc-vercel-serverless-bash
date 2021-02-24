#!/usr/bin/env bash

set -euo pipefail

function handler {
    jq -r '.path | split("?")[-1]' <"$1"
}
