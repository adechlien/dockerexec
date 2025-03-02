FROM ruby:2.7

WORKDIR /app

# Ejecutar el archivo montado
CMD ["ruby", "/app/script.rb"]
