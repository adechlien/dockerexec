FROM ruby:2.7

WORKDIR /app

# Copiar el script interno
COPY run/run-ruby.sh /app/run/run-ruby.sh
RUN chmod +x /app/run/run-ruby.sh

# Copiar el archivo específico
COPY samples/sample.rb .

# Ejecutar el script interno
CMD ["/app/run/run-ruby.sh"]
