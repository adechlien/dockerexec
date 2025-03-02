#!/bin/bash

START_TIME=$(date +%s%N)

# Compilar y ejecutar el script C++
g++ -o /app/sample /app/sample.cpp
/app/sample

END_TIME=$(date +%s%N)
ELAPSED_TIME=$((($END_TIME - $START_TIME)/1000000))

echo "Tiempo de ejecución: ${ELAPSED_TIME}ms"
