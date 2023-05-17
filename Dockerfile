FROM python:3.9-slim-buster

WORKDIR /app

COPY HostChecker.py .

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y --no-install-recommends \
    gcc \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir requests telebot threading

CMD ["python", "HostChecker.py"]
