FROM python:3.6-slim
LABEL maintainer Zach Valenta
ENV PYTHONDONTWRITEBYTECODE 1
COPY . /docker-flask-postgres
WORKDIR /docker-flask-postgres
RUN python -m pip install -r requirements.txt
CMD flask run --host 0.0.0.0
