# concourse-manifest

## How to deploy
```bash
$ ./bin/gen-secrets.sh
$ kustomize build overlays | kubectl apply -f -
```
