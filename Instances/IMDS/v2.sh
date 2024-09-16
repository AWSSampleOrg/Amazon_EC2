#!/usr/bin/env bash

TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

if [ $? -ne 0 ]; then
    echo "Failed to get TOKEN from IMDS v2"
    exit 1
fi

# Get the available versions of the instance metadata
curl -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/
# Get the top-level metadata items
curl -H "X-aws-ec2-metadata-token: $TOKEN" http://169.254.169.254/latest/meta-data/
