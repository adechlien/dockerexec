#!/bin/bash

START_TIME=$(date +%s%N)

# Ejecutar el script JavaScript
node /app/sample.js

END_TIME=$(date +%s%N)
ELAPSED_TIME=$((($END_TIME - $START_TIME)/1000000))

echo "Tiempo de ejecución: ${ELAPSED_TIME}ms"
