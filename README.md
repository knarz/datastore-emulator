# Google Datastore Emulator Docker Image

# Usage

```
$ docker pull knarz/datastore-emulator:latest
$ docker run --rm -ti --name datastore-emu datastore
```

Or in a `docker-compose.yml`

```
datastore:
  image: knarz/datastore-emulator
worker:
  build: .
  environment:
    - DATASTORE_EMULATOR_HOST=datastore:8432
  restart: always
  links:
    - datastore
```
