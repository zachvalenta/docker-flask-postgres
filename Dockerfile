FROM python:3.6-slim
LABEL maintainer Zach Valenta
ENV PYTHONDONTWRITEBYTECODE 1
WORKDIR /docker-flask-postgres
COPY requirements.txt /docker-flask-postgres
RUN python -m pip install -r requirements.txt
COPY . /docker-flask-postgres
CMD flask run --host 0.0.0.0
