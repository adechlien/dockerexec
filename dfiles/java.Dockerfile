FROM openjdk:11-jdk-slim

WORKDIR /app

# Copiar el script interno
COPY run/run-java.sh /app/run/run-java.sh
RUN chmod +x /app/run/run-java.sh

# Copiar el archivo específico
COPY samples/sample.java .

# Ejecutar el script interno
CMD ["/app/run/run-java.sh"]
