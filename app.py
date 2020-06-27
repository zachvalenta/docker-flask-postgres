import os

from flask import Flask, jsonify, request
from flask_sqlalchemy import SQLAlchemy

"""
CONFIG
"""

# app - init, config for Postgres
app = Flask(__name__)
user = os.getenv("DB_USER")
pw = os.getenv("DB_PW")
name = os.getenv("DB_NAME")
app.config["SQLALCHEMY_DATABASE_URI"] = f"postgresql://{user}:{pw}@db:5432/{name}"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

# db - init, declare model, create tables on app start
db = SQLAlchemy(app)


class Thing(db.Model):
    pk = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(30))

    def __repr__(self):
        return f"id {self.pk} name {self.name}"


db.create_all()

"""
ROUTES
"""

@app.route('/healthcheck')
def index():
    return "app runnning", 200

@app.route("/get-things")
def read():
    things = [dict(id=x.pk, name=x.name) for x in Thing.query.all()]
    return jsonify({"things": things})

@app.route("/post-thing", methods=["POST"])
def create():
    thing = Thing(name=request.json["name"])
    db.session.add(thing)
    db.session.commit()
    return jsonify({"thing": dict(id=thing.pk, name=thing.name)})
