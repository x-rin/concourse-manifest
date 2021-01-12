#!/usr/bin/env bash

../kubernetes-manifests/scripts/gen-secret-concourse.sh
./gen-secret-web.sh
../kubernetes-manifests/scripts/gen-secret-postgresql.sh
