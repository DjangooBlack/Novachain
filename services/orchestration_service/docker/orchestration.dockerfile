FROM python:3.13.7-alpine

WORKDIR /app

COPY ./src/orchestration ./app
COPY ./requirements.txt ./app

RUN apt-get update && \
    pip install -r requirements.txt

RUN chmod +x ./app/main.py

CMD [ "python","run", "main.py" ]
