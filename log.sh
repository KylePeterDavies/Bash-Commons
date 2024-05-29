# !/usr/bin/env bash

readonly FATAL="FATAL"

readonly ERROR="ERROR"

readonly WARN="WARN"

readonly INFO="INFO"

readonly DEBUG="DEBUG"

readonly TRACE="TRACE"

function log {
  local -r level="$1" 
  local -r message="$2"
  local -r timestamp="$(date +"%Y-%m-%d %H:%M:%S")"
  local -r name="$(basename "$0")"
  local -r log_msg='{"level": "%s", "message": "%s", "timestamp": "%s", "name": "%s"}'
  printf "$log_msg\n" "$level" "$message" "$timestamp" "$name"
}

function fatal {
  log $FATAL "$1"
  exit 1
}

function error {
  log $ERROR "$1"
}

function warn {
  log $WARN "$1"
}

function info {
  log $INFO "$1"
}

function debug {
  log $DEBUG "$1"
}

function trace {
  log $TRACE "$1"
}