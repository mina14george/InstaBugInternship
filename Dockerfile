# Stage 1: Build Stage
FROM golang:1.20-alpine AS build

WORKDIR /app

COPY . .

RUN go build -o app

# Stage 2: Final Stage
FROM alpine:latest

WORKDIR /app

COPY --from=build /app/app .

EXPOSE 9090

CMD ["./app"]
