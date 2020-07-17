# overview

Bare bones implementation of:

* a Flask app
* talking to a database (Postgres)
* Dockerized

## how to run?

```sh
# build images, start containers
make up

# hit healthcheck endpoint
make hc

# create record
make post

# get all records
make get

# clean up all containers/images/volumes
make clean
```

## FYI

Here's the full list of projects I have in this vein:

* [base: Docker + Flask](https://github.com/zachvalenta/docker-flask)
* [base + config management](https://github.com/zachvalenta/docker-flask-envs-secrets)
* [base + config management + SQLite](https://github.com/zachvalenta/docker-flask-sqlite)
* [base + config management + SQLite + gunicorn](https://github.com/zachvalenta/docker-flask-sqlite-gunicorn-config)
* [base + SQLite](https://github.com/zachvalenta/docker-flask-sqlite)
* [base + SQLite + gunicorn](https://github.com/zachvalenta/docker-flask-sqlite-gunicorn)
* [base + Postgres](https://github.com/zachvalenta/docker-flask-postgres)

Here are the Docker versions I'm working with:

```sh
$ docker --version  # Docker version 18.09.2, build 6247962
$ docker-compose --version  # docker-compose version 1.23.2, build 1110ad01
$ docker-machine --version  # docker-machine version 0.16.1, build cce350d7
```
