#!/bin/bash
function greetings() {
  USER=$(whoami)
  echo "Welcome ${USER}"
  currentTime
}
function currentTime() {
  echo "Current Time Is: $(date +%r)"
}
greetings