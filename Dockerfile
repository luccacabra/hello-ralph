FROM alpine:3.8

RUN mkdir -p /usr/local/go

WORKDIR /usr/local/go 

RUN wget https://github.com/luccacabra/hello-ralph/raw/master/hello
RUN chmod a+x hello

EXPOSE 8080

CMD ["/usr/local/go/hello"]
