#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <script>"
  exit 1
fi

SCRIPT=$1
EXT="${SCRIPT##*.}"

case $EXT in
  py)
    DOCKERFILE="python.Dockerfile"
    CONTAINER_NAME="python-container"
    ;;
  java)
    DOCKERFILE="java.Dockerfile"
    CONTAINER_NAME="java-container"
    ;;
  cpp)
    DOCKERFILE="cpp.Dockerfile"
    CONTAINER_NAME="cpp-container"
    ;;
  js)
    DOCKERFILE="js.Dockerfile"
    CONTAINER_NAME="js-container"
    ;;
  rb)
    DOCKERFILE="ruby.Dockerfile"
    CONTAINER_NAME="ruby-container"
    ;;
  *)
    echo "Unsupported file extension: $EXT"
    exit 1
    ;;
esac

# Build the container
echo "Building $CONTAINER_NAME container..."
docker build -t $CONTAINER_NAME -f $DOCKERFILE .

# Run the script inside the container
START_TIME=$(date +%s%N)

echo "Running $SCRIPT in $CONTAINER_NAME..."
docker run --rm -v "$(pwd)/$SCRIPT":/app/script.$EXT $CONTAINER_NAME

END_TIME=$(date +%s%N)
ELAPSED_TIME=$((($END_TIME - $START_TIME)/1000000))

echo "Time execution: ${ELAPSED_TIME}ms"
