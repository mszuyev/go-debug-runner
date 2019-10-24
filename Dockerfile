FROM golang:1.13-alpine
ENV CGO_ENABLED 0
ENV GO111MODULE on
ENV GOPROXY direct
ENV GOSUMDB off
RUN apk update \
    && apk add --no-cache bash mc git build-base libc6-compat vim openssh \ 
    && go get -u github.com/go-delve/delve/cmd/dlv \
    && mkdir -p ~/.config/dlv \
    && echo "aliases: {}" >  ~/.config/dlv/config.yml \
    && echo "substitute-path: []" >>  ~/.config/dlv/config.yml \
    && echo "max-string-len: 2048" >>  ~/.config/dlv/config.yml \
    && echo "max-array-values: 512" >>  ~/.config/dlv/config.yml \
    && echo "max-variable-recurse: 128" >>  ~/.config/dlv/config.yml \
    && echo "show-location-expr: false" >>  ~/.config/dlv/config.yml \
    && echo "source-list-line-color: 34" >>  ~/.config/dlv/config.yml \
    && echo "debug-info-directories:" >>  ~/.config/dlv/config.yml \
    && echo " - /usr/lib/debug/.build-id" >>  ~/.config/dlv/config.yml
