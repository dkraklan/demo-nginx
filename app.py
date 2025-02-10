#!/usr/bin/env python3

from flask import Flask
import os 

app = Flask(__name__)


@app.route("/")
def index():
    env_test = os.getenv("ENV_TEST", "ENV Not Set!") 
    return "Hey, it works! <br> ENV_TEST: " + env_test


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
