# Automatic code execution using containers
Shell script for automatically detect

## Prerequisites
For the implementation, it is highly recommended the use of [Play with Docker](https://labs.play-with-docker.com/).

## How to implement
### Clone the repository
```bash
git clone https://github.com/adechlien/dockerexec/ 
cd dockerexec
```

### Build the containers
#### One by one
```bash
  docker build -t python-container -f Dockerfile.py .
  docker build -t java-container -f Dockerfile.java .
  docker build -t cpp-container -f Dockerfile.cpp .
  docker build -t js-container -f Dockerfile.js .
  docker build -t ruby-container -f Dockerfile.rb .
```

or 

#### All at one

```bash
  command
```

### Run the script
```bash
  ./autoexec.sh sample.<ext>
```

To see the different scripts available to run, watch the `samples/` directory.

### Expected output:

```bash
  Salida del programa ejecutado...
  Tiempo de ejecución: 35ms
```

## Supported Languages
- C++ (.cpp)
- Python (.py)
- JavaScript (.js)
- Ruby (.rb)
- Java (.java)

## Members
🐺 Kidman Cabana \
🐨 Alejandro Hernández
