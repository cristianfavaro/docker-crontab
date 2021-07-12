FROM ubuntu:16.04

RUN touch /var/log/cron.log
ADD ./crontabs /etc/cron.d
ADD ./scripts /var/scripts

RUN apt-get update \
    && apt-get -y install cron

RUN chmod 0644 /etc/cron.d/crontab

CMD cron && tail -f /var/log/cron.log
