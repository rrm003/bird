FROM golang 

RUN go get github.com/rrm003/birdpedia
RUN sudo apt-get install go-dep
RUN dep ensure

ADD . /go/src/github.com/rrm003/birdpedia

RUN go install github.com/rrm003/birdpedia


ENTRYPOINT /go/bin/birdpedia

EXPOSE 8090

