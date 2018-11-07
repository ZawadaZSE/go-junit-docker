FROM golang:1.11 as builder
RUN go get -u github.com/jstemmer/go-junit-report

FROM alpine:3.8
COPY --from=builder /go/bin/go-junit-report /go-junit-report
ENTRYPOINT ["/go-junit-report"]
