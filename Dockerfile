# Base image
FROM resin/rpi-raspbian

# Maintainer info
MAINTAINER Adrian Moreno <adrian.moreno@devcows.com>

# Update and upgrade
RUN apt-get update
RUN apt-get -y upgrade

# Install prerequisites
RUN apt-get install -y python git-core

# Install CouchPotato
RUN cd /opt && \
  git clone https://github.com/RuudBurger/CouchPotatoServer.git

# Expose port
EXPOSE 5050

# Set working directory
WORKDIR /opt/CouchPotatoServer

# Run CouchPotato
ENTRYPOINT ["python", "CouchPotato.py"]
