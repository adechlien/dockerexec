# Automatic code execution using containers
Shell script for automatically detect the extension of a given script and execute its code.

## Requisites
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

## Sample files
`samples/` directory contains the following files:
- `sample.cpp`: For C++
- `sample.py`: For Python
- `sample.js`: For JavaScript
- `sample.rb`: For Ruby
- `sample.java`: For Java

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

## Members
🐺 Kidman Cabana \
🐨 Alejandro Hernández
