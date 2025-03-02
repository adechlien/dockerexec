FROM ruby:2.7

WORKDIR /app

# Copiar el archivo proporcionado
COPY samples/sample.rb .

# Ejecutar el archivo proporcionado como argumento
CMD ["ruby", "sample.rb"]
