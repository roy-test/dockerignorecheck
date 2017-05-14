#!/usr/bin/env bash

function test_postgresql {
  pg_isready -h "${POSTGRES_HOST}" -U "${POSTGRES_USER}"
}

count=0
until ( test_postgresql )
do
  ((count++))
  if [ ${count} -gt 100 ]
  then
    echo "Services didn't become ready in time"
    exit 1
  fi
  sleep 1
done
