# Task Master

A simple Python To-do app using Flask.

## Prerequisites

- Python >=3.6.2,<4.0
- Pip
- [Poetry](https://python-poetry.org/) (if using)

## Setting up for local development

### Using Poetry

```
poetry install
```

### Using Pip

```
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Genereating `requirements.txt`

This is required for when using Pip and when building with Docker.

```
poetry export --without-hashes -f requirements.txt > requirements.txt
```

## Building Docker image

```
docker build -t task-master:test .
```

## Running the application

### Locally

```
./gunicorn.sh
```

### Docker

```
docker run -it --rm -p 8080:8080 task-master:test
```

Or with `docker-compose`

```
docker-compose up
docker-compose down
```

Access at http://localhost:8080
