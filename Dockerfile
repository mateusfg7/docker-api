FROM python:3.6.1-alpine

RUN apk update

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY ./requirements.txt .

RUN pip install -r requirements.txt

ENV PYTHONUNBUFFERED 1

COPY . .

