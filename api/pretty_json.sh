#!/usr/bin/env bash

set -euo pipefail

function handler {
    http_response_json
    jq -M .
}
