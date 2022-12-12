FROM python:3.10-slim-buster

RUN apt update && apt -y upgrade && apt install -y build-essential libssl-dev libffi-dev python3-dev  mariadb-server libmariadb-dev

WORKDIR /home/python/foodtasker

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV DEBIAN_FRONTEND noninteractive

# Install pip and gunicorn web server
RUN pip install --no-cache-dir --upgrade pip
RUN pip install gunicorn==20.1.0
RUN pip install --upgrade pip

COPY requirements.txt /home/python/foodtasker/

RUN pip install --no-cache-dir -r requirements.txt

COPY . /home/python/foodtasker/

EXPOSE 8000
