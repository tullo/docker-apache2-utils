# docker-apache2-utils

ApacheBench (ab) is the default entrypoint, which can be overwritten with e.g. `--entrypoint /usr/bin/htpasswd`

## Usage

`docker run --rm tullo/ab -r -n 100 -c 10 http://example:80/`
