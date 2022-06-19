FROM golang:alpine AS builder

WORKDIR /usr/scr/app

COPY . .

#Comando para dar build no golang
RUN go build -o /golang main.go

FROM scratch

COPY --from=builder /golang /golang

CMD ["/golang"]
