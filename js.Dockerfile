FROM node:14

WORKDIR /app

# Ejecutar el archivo montado
CMD ["node", "/app/script.js"]
