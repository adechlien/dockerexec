FROM gcc:latest

WORKDIR /app

# Copiar el archivo específico
COPY samples/sample.cpp .

# Compilar el archivo
RUN g++ -o sample sample.cpp

# Ejecutar el binario compilado
CMD ["./sample"]
