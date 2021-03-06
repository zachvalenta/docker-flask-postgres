FROM python:3.6-slim
LABEL maintainer Zach Valenta
ARG project_name=docker-flask-postgres
ENV PYTHONDONTWRITEBYTECODE 1
WORKDIR /$project_name
COPY requirements.txt /$project_name/
RUN python -m pip install -r requirements.txt
COPY . /$project_name
CMD flask run --host 0.0.0.0
