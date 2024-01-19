FROM python:3.9-alpine
WORKDIR /docker_compose

RUN apk update \
    && apk add postgresql-dev gcc python3-dev musl-dev

COPY requirements.txt .
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
EXPOSE 6000
COPY . .
CMD python manage.py migrate
