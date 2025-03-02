# Automatic code execution using containers
Shell script for automatically detect the extension of a given script and execute its code.

## Prerequisites
For the implementation, it is highly recommended the use of [Play with Docker](https://labs.play-with-docker.com/).

## How to implement
### Clone the repository
```bash
git clone https://github.com/adechlien/dockerexec/ 
cd dockerexec
```

### Build and run the script
```bash
  ./autoexec.sh sample.<ext>
```

To see the different scripts available to run, watch the `samples/` directory.

## Usage example
Running
```bash
  ./autoexec.sh sample.js
```
### Output:

```bash
  Hello from JavaScript!
  Time execution: 820ms
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
