FROM python:3.9-slim

WORKDIR /app

COPY samples/sample.py .

CMD ["python", "sample.py"]
