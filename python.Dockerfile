FROM python:3.9-slim

WORKDIR /app

# Copiar el archivo específico
COPY script.py .

# Ejecutar el archivo
CMD ["python", "script.py"]
