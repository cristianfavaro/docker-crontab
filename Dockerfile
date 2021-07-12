FROM ubuntu:16.04

RUN touch /var/log/cron.log

RUN apt-get update \
    && apt-get -y install cron

RUN chmod 0644 /etc/cron.d/

CMD cron && tail -f /var/log/cron.log
