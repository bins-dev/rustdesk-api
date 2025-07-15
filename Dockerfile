FROM alpine:latest

# set workdir
WORKDIR /app

# alpine install tzdata
RUN apk add --no-cache tzdata

COPY ./release /app/

VOLUME /app/data

EXPOSE 21114

CMD ["./apimain"]
