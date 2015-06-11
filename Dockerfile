# Base image
FROM resin/rpi-raspbian

# Maintainer info
MAINTAINER Adrian Moreno <adrian.moreno@devcows.com>

# Update and upgrade
RUN apt-get update

# Install prerequisites
RUN apt-get install -y python git-core

# Install CouchPotato
RUN cd /opt && \
  git clone https://github.com/RuudBurger/CouchPotatoServer.git

# Expose port
EXPOSE 5050

# Set working directory
WORKDIR /opt

# Run CouchPotato
ENTRYPOINT ["python", "CouchPotatoServer/CouchPotato.py"]
