# ApacheBench (ab)

ApacheBench (ab) is the default entrypoint, which can be overwritten with e.g. `--entrypoint /usr/bin/htpasswd`

## Usage

`$ docker run --name ab --rm tullo/ab -r -n 400 -c 10 http://example/`

### Generate gnuplot readable file

Use the `-g` switch to tell ab to write a 'gnuplot file' ready for post prcessing via gnuplot

```
$ docker run -it --name ab --rm --entrypoint /bin/sh tullo/ab
$ ab -r -n 400 -c 10 -g gnuplot.tsv http://example/
```

### Apache Benchmark and GNU Plot

Let's try to look at response time (in ms) over time (seconds, serially)

```
$ docker cp ab:/gnuplot.tsv ./gnuplot/data/gnuplot.tsv
$ cd gnuplot && gnuplot jpegplot.script
```
![](gnuplot/graphs/timeseries.jpg)

## Credit

* [Apache Bench and Gnuplot: you’re probably doing it wrong](http://www.bradlanders.com/2013/04/15/apache-bench-and-gnuplot-youre-probably-doing-it-wrong/)
* [An Introduction to Load Testing](https://www.digitalocean.com/community/tutorials/an-introduction-to-load-testing)
* [Tips for Heavy Load Testing with Apache Bench](https://blog.getpolymorph.com/7-tips-for-heavy-load-testing-with-apache-bench-b1127916b7b6)
