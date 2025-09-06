FROM python:3.13.7-alpine

WORKDIR /app

COPY ./src/api ./app
COPY ./requirements.txt ./app
COPY ./Makefile ./app

RUN apt-get update && \
    pip install -r requirements.txt

RUN chmod +x ./app/gateway/main.py
CMD [ "python","run", "gateway/main.py" ]
