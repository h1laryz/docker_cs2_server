# Docker image for cs2 servers made with Ubuntu 24.10

## Docker image

`docker pull ghcr.io/h1laryz/killaura-cs2-server:latest`

## Env variables

``` bash
export KILLAURA_CS2_LAUNCH_PARAMS="+game_type 0 +game_mode 1 \
  +sv_lan 0 +rcon_password \"12345\" \
  +mapgroup mg_active +map de_dust2 +sv_visiblemaxplayers 10"
```

## Run container

``` bash
mkdir -p ~/cs2_server && \
sudo chown 1001:1001 ~/cs2_server

docker run --rm --name killaura-cs2-server \
  -v ~/cs2_server/:/home/container/cs2 \
  -e KILLAURA_CS2_LAUNCH_PARAMS="$KILLAURA_CS2_LAUNCH_PARAMS" \
  -p 27015:27015/udp -p 27015:27015/tcp \
  ghcr.io/h1laryz/killaura-cs2-server:latest
```
