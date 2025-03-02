FROM python:3.9-slim

WORKDIR /app

# Copiar el script interno
COPY run/run-python.sh /app/run/run-python.sh
RUN chmod +x /app/run/run-python.sh

# Copiar el archivo específico
COPY samples/sample.py .

# Ejecutar el script interno
CMD ["/app/run/run-python.sh"]
