#!/usr/bin/env bash

set -euo pipefail

import 'querystring@1.3.0'

function handler {
    local path
    local querystring
    local name
    path=$(jq -r '.path' <"$1")
    querystring=$(querystring "$path")
    querystring_parse "$querystring" name
    echo "name: $name"
}
