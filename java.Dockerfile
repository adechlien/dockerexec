FROM openjdk:11-jdk-slim

WORKDIR /app

# Copiar un script interno para compilar y ejecutar
COPY run-java.sh /app/run-java.sh
RUN chmod +x /app/run-java.sh

# Ejecutar el script
CMD ["/app/run-java.sh"]
