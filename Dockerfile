FROM golang:1.15

RUN mkdir -p /serv
ADD . /serv
WORKDIR /serv

RUN GOOS=linux GOARCH=amd64 CGO_ENABLE=0 \
   go build -o serv ./main.go

CMD [ "./serv" ]