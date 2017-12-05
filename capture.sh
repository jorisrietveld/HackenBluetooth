#!/usr/bin/env bash
mkfifo /tmp/pipe
ubertooth-btle -f -c /tmp/pipe

