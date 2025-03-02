#!/bin/bash

START_TIME=$(date +%s%N)

# Ejecutar el script Ruby
ruby /app/sample.rb

END_TIME=$(date +%s%N)
ELAPSED_TIME=$((($END_TIME - $START_TIME)/1000000))

echo "Tiempo de ejecución: ${ELAPSED_TIME}ms"
