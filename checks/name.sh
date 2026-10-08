#!/bin/sh
# The index greets whatever name it is given.
set -e
curl -fsS 'http://web:8000/?name=isoloom' | grep -q 'isoloom'
