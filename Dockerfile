FROM alpine:3.17
RUN apk --no-cache add apache2-utils
ENTRYPOINT ["ab"]
CMD ["-h"]
