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

I have a few other projects like this:

* [Docker + Flask](https://github.com/zachvalenta/docker-flask)
* [Docker + Flask + SQLite](https://github.com/zachvalenta/docker-flask-sqlite)
* [Docker + Flask + SQLite + gunicorn](https://github.com/zachvalenta/docker-flask-sqlite-gunicorn)

Here are the Docker versions I'm working with:

```sh
$ docker --version  # Docker version 18.09.2, build 6247962
$ docker-compose --version  # docker-compose version 1.23.2, build 1110ad01
$ docker-machine --version  # docker-machine version 0.16.1, build cce350d7
```
