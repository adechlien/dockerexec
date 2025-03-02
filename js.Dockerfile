FROM node:14

WORKDIR /app

# Copiar el archivo proporcionado
COPY samples/sample.js .

# Ejecutar el archivo proporcionado como argumento
CMD ["node", "sample.js"]
