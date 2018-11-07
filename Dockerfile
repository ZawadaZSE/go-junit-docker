FROM golang:1.11 as builder

RUN go get -u github.com/jstemmer/go-junit-report

FROM scratch

COPY --from=builder /go/bin/go-junit-report /go-junit-report

ENTRYPOINT ["/go-junit-report"]
