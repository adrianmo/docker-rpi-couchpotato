# docker-rpi-couchpotato

[Docker image](https://registry.hub.docker.com/u/adrianmo/rpi-couchpotato/) for running CouchPotato on a Raspberry PI.

## Usage

You can run the image with the following command.

    docker run -d -p 5050:5050 -v /path/to/movies:/movies -v /path/to/config:/config --restart=always --name couchpotato adrianmo/rpi-couchpotato

Note the `--restart=always` parameter, that will restart the Docker container every time it stops. We need that because CouchPotato will update itself periodically and restart the process, causing the Docker container to stop.


## Build

You can **optionally** build the image `adrianmo/rpi-couchpotato` with the latest CouchPotato sources. To do that just execute the following command once you have checked out the [source repository](https://github.com/adrianmo/docker-rpi-couchpotato).

    docker build -t adrianmo/rpi-couchpotato .

## Docker daemon on the Raspberry PI

The Docker daemon relies on several packages that are specified as dependencies. Most OS kernels for the Raspberry PI must be rebuild to meet the dependencies, which can be a tedious work if you are not familiar with it.

That's why I would recommend you to download a preconfigured SD card image for the PI which will already contain everything you need to run Docker on it.

As of preconfigured images, the Hypriot team created an excellent [step-by-step guide to installing their customized image](http://blog.hypriot.com/getting-started-with-docker-on-your-arm-device/).



## Troubleshooting

If you see and error like this...

    FATA[0000] Error response from daemon: Conflict. The name "couchpotato" is already in use by container a50baa965059. You have to delete (or rename) that container to be able to reuse that name.

it means that you already have a stopped container. You can just restart it running the following command.

    docker start couchpotato
