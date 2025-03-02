#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <script>"
  exit 1
fi

SCRIPT=$1
EXT="${SCRIPT##*.}"

# Ruta completa del archivo en la carpeta samples
FULL_PATH="samples/$SCRIPT"

# Verificar si el archivo existe
if [ ! -f "$FULL_PATH" ]; then
  echo "Error: File '$FULL_PATH' not found."
  exit 1
fi

case $EXT in
  py)
    DOCKERFILE="dfiles/python.Dockerfile"
    CONTAINER_NAME="python-container"
    ;;
  java)
    DOCKERFILE="dfiles/java.Dockerfile"
    CONTAINER_NAME="java-container"
    ;;
  cpp)
    DOCKERFILE="dfiles/cpp.Dockerfile"
    CONTAINER_NAME="cpp-container"
    ;;
  js)
    DOCKERFILE="dfiles/js.Dockerfile"
    CONTAINER_NAME="js-container"
    ;;
  rb)
    DOCKERFILE="dfiles/ruby.Dockerfile"
    CONTAINER_NAME="ruby-container"
    ;;
  *)
    echo "Unsupported file extension: $EXT"
    exit 1
    ;;
esac

# Copiar el archivo al directorio actual con el nombre correcto
cp "$FULL_PATH" script.$EXT

# Build the container
echo "Building $CONTAINER_NAME container..."
docker build -t $CONTAINER_NAME -f $DOCKERFILE .

# Run the script inside the container
echo "Running $SCRIPT in $CONTAINER_NAME..."
docker run --rm $CONTAINER_NAME

# Limpiar: eliminar el archivo copiado
rm script.$EXT
