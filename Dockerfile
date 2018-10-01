FROM golang

RUN mkdir /benchmark
RUN mkdir /benchmark/bin
RUN mkdir /benchmark/go

COPY ./Makefile /benchmark/Makefile
COPY ./go /benchmark/go
RUN rm /benchmark/go/bin/*

WORKDIR /benchmark
RUN make
RUN chmod a+x bin/websocket-bench