# Debian: PHP7-FPM
#
# VERSION 0.0.1

# Pull the base image.
FROM ericmdev/php7

# Set the author.
MAINTAINER Eric Mugerwa <dev@ericmugerwa.com>

# Set environment variables.
ENV FILES config/

# Install packages.
RUN apt-get update && apt-get install -y \
    php7.0-fpm

# Add run script.
ADD bin/run.sh /bin/run.sh

# Define default command.
CMD ["/bin/run.sh"]

# Expose ports.
EXPOSE 9000