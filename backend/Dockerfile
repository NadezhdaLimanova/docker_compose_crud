FROM python:3.9-alpine
WORKDIR /backend

COPY . .

RUN pip install --upgrade pip && pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
