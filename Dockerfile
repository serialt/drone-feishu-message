FROM golang AS builder
WORKDIR /app
ENV GOPROXY=https://goproxy.cn
COPY . .
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64  go build -a -o drone-feishu .

FROM alpine:latest
RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories
RUN apk update && apk add ca-certificates && rm -rf /var/cache/apk/*
COPY --from=builder /app/drone-feishu /bin


ENTRYPOINT ["/bin/drone-feishu"]
