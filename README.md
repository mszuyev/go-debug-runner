# go-debug-runner
Repo for docker image to run golang of version 1.13. Does not support "dep" package manager anymore.

### how to run

```
$CONTAINER_NAME=my-app

docker container run \
   -v $GOPATH:/go \
   -v $HOME/.ssh:/root/.ssh \
   -v $HOME/.gitconfig:/root/.gitconfig \
   --rm \
   -p 8081:8081 -p 40000:40000 \
   --security-opt="apparmor=unconfined" \
   --cap-add=SYS_PTRACE \
   --name $CONTAINER_NAME \
   -it mszuyev/go-debug-runner:1.13 /bin/sh
```
