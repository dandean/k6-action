#!/bin/sh

# `$*` expands the `args` supplied in an `array` individually 
# or splits `args` in a string separated by whitespace.
export K6_CLOUD_TOKEN=$INPUT_TOKEN
export K6_STATSD_ENABLE_TAGS=true
export K6_DATADOG_ADDR: datadog-agent:8125
export K6_COMMAND=$([[ $INPUT_CLOUD == "true" ]] && echo 'cloud' || echo 'run')
sh -c "k6 $K6_COMMAND $INPUT_FILENAME $INPUT_FLAGS"
