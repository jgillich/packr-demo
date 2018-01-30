FROM golang:stretch

ADD . /builds/org/repo

RUN go get -u github.com/gobuffalo/packr/... && \
    mkdir -p $GOPATH/src/org && \
    ln -s /builds/org/repo $GOPATH/src/org/repo && \
    cd $GOPATH/src/org/repo && \
    packr && \
    go build && \
    rm -rf mybox && \
    cat main-packr.go && \
    ./repo
