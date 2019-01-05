#!/usr/bin/env bash

tmp_dir=`mktemp -d secrets-XXXXX`
cd ${tmp_dir}

echo 'test:$2a$10$sDB6AsH2HheOWHILr' > local-users
openssl rand -base64 24 > encryption-key

kubectl create secret generic concourse-web --from-file=.

cd -
rm -rf ${tmp_dir}
