#!/bin/bash
set -e

zcash-fetch-params
zcashd "$@"

