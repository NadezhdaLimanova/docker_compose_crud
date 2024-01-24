FROM python:3.9-alpine
WORKDIR /backend

COPY . .
RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

RUN pip install --upgrade pip && pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
