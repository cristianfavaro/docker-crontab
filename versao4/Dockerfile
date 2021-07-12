FROM python:3.8

RUN apt-get update && apt-get -y install cron

# Copy hello-cron file to the cron.d directory
COPY ./crontabs /etc/cron.d/
 
# Give execution rights on the cron job
RUN chmod 0644 /etc/cron.d/

# Apply cron job
RUN crontab /etc/cron.d/
 
# Create the log file to be able to run tals
RUN touch /var/log/cron.log
 
# Run the command on container startup
CMD cron && tail -f /var/log/cron.log