FROM gcc:latest

WORKDIR /app

# Copiar un script interno para compilar y ejecutar
COPY run-cpp.sh /app/run-cpp.sh
RUN chmod +x /app/run-cpp.sh

# Ejecutar el script
CMD ["/app/run-cpp.sh"]
