#!/bin/bash

START_TIME=$(date +%s%N)

# Compilar y ejecutar el script Java
javac /app/sample.java
java -cp /app sample

END_TIME=$(date +%s%N)
ELAPSED_TIME=$((($END_TIME - $START_TIME)/1000000))

echo "Tiempo de ejecución: ${ELAPSED_TIME}ms"
