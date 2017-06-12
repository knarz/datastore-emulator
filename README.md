# Google Datastore Emulator Docker Image

# Usage

```
$ docker pull knarz/datastore-emulator:latest
$ docker run --rm -ti --name datastore-emu datastore
```

Or in a `docker-compose.yml`

```
datastore:
  build: knarz/datastore-emulator
  ports:
    - "8432"
  restart: always
worker:
  build: .
  environment:
    - DATASTORE_EMULATOR_HOST=pubsub:8432
  restart: always
  links:
    - datastore
```
