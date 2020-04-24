#!/bin/bash

tpmd
tcsd -e

if [ $# -gt 0 ]; then
  exec "$@"
fi
