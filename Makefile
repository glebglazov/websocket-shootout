GOPATH=$(CURDIR)/go
GOBIN=$(CURDIR)/go/bin

all : \
    bin/websocket-bench \

bin/websocket-bench : $(GOPATH)/bin/websocket-bench
	cp $< $@

$(GOPATH)/bin/websocket-bench : $(GOPATH)/src/hashrocket/websocket-bench/benchmark/*.go $(GOPATH)/src/hashrocket/websocket-bench/cmd/websocket-bench/*.go
	cd go/src/hashrocket/websocket-bench/cmd/websocket-bench && go install
