# go-debug-runner
repo for docker image

### how to run

```
$CONTAINER_NAME=my-app

docker container run \
    -v $GOPATH/src:/go/src \
    --rm \
    -p 8081:8081 -p 40000:40000 \
    --security-opt="apparmor=unconfined" \
    --cap-add=SYS_PTRACE \
    --name $CONTAINER_NAME \
    -it mszuyev/go-debug-runner:1.12 /bin/sh
```
