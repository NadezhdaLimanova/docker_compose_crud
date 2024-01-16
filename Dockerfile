FROM python:3.9-alpine
WORKDIR /docker_compose
COPY requirements.txt .
RUN pip install -r requirements.txt
ENV PYTHONUNBUFFERED 1
EXPOSE 6000
COPY . .
CMD python manage.py migrate
