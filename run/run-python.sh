#!/bin/bash

# Iniciar medición del tiempo
START_TIME=$(date +%s%N)

# Ejecutar el script Python
python3 /app/sample.py

# Finalizar medición del tiempo
END_TIME=$(date +%s%N)
ELAPSED_TIME=$((($END_TIME - $START_TIME)/1000000))

# Imprimir el tiempo de ejecución
echo "Tiempo de ejecución: ${ELAPSED_TIME}ms"
