# rpi-couchpotato-docker
Dockerfile for running CouchPotato in a Raspberry PI

## Run

    docker run -d -p 5050:5050 -v /path/to/movies:/movies --name couchpotato adrianmo/rpi-couchpotato
    
