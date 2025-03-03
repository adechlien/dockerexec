FROM node:lts-slim

WORKDIR /app

# Copiar el script interno
COPY run/run-js.sh /app/run/run-js.sh
RUN chmod +x /app/run/run-js.sh

# Copiar el archivo específico
COPY samples/sample.js .

# Ejecutar el script interno
CMD ["/app/run/run-js.sh"]
