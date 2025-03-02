FROM openjdk:11-jdk-slim

WORKDIR /app

# Copiar el archivo específico
COPY samples/sample.java .

# Compilar el archivo
RUN javac sample.java

# Ejecutar el archivo compilado
CMD ["java", "sample"]
