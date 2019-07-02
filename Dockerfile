FROM python:3.7-alpine
MAINTAINER Sara ANAKKAR GD-App Developper

ENV PYTHONUNBUFFERED 1

#install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

#setup directory structure
RUN mkdir /app
WORKDIR /app

COPY ./app /app

#for security purposes
RUN adduser -D user
USER user




