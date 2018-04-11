#!/bin/sh

if [ "$IN_MEMORY" = "true" ]; then
  /root/google-cloud-sdk/bin/gcloud beta emulators datastore start --no-store-on-disk --host-port "0.0.0.0:${HOST_PORT}" --consistency="${CONSISTENCY}"
else
  /root/google-cloud-sdk/bin/gcloud beta emulators datastore start --data-dir "${DATA_DIR}" --host-port "0.0.0.0:${HOST_PORT}" --consistency="${CONSISTENCY}"

fi
