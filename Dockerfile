FROM alpine:3.22
RUN apk --no-cache add apache2-utils
ENTRYPOINT ["ab"]
CMD ["-h"]
