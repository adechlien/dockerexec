FROM gcc:latest

WORKDIR /app

# Copiar el script interno
COPY run/run-cpp.sh /app/run/run-cpp.sh
RUN chmod +x /app/run/run-cpp.sh

# Copiar el archivo específico
COPY samples/sample.cpp .

# Ejecutar el script interno
CMD ["/app/run/run-cpp.sh"]
