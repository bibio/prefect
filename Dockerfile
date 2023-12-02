FROM python:3.11-alpine3.18

RUN apk upgrade --no-cache && \
    apk add --no-cache tzdata build-base bash libffi-dev && \
    rm -rf /var/cache/apk/*
RUN pip install --upgrade pip && pip install -U prefect
