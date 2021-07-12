FROM python:3.8

RUN touch /var/log/cron.log

RUN apt-get update \
    && apt-get -y install cron