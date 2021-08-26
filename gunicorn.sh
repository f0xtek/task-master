#!/bin/sh
export PATH="/venv/bin:$PATH"
gunicorn --chdir app --bind 0.0.0.0:8080 app:app