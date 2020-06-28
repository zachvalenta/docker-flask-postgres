FROM python:3.6-slim
RUN pip install psycopg2-binary
LABEL maintainer Zach Valenta
COPY . /docker-flask-postgres
WORKDIR /docker-flask-postgres
RUN python -m pip install -r requirements.txt
CMD flask run --host 0.0.0.0
