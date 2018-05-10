#!/bin/bash
function greetings() {
  for PERSON_NAME in $@
  do
    echo "Hello ${PERSON_NAME}"
  done
}
greetings World! Random Guy Stranger