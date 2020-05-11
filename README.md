## ./tt
> `./tt` prefixes a utc timestamp to each line it receives from `stdin`.
> Useful to annotate data from sources that doesn't log time.


### Install
Clone the repo and run
```bash
> make
> sudo make install
```

### Use
``` bash
> log-from-some-source | tt
2020-05-11T18:23:45+0000 78.172.44.50 - - "GET /run HTTP/1.1" 200 83 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:35.0) Gecko/20100101 Firefox/35.0"

2020-05-11T18:23:45+0000 78.172.44.50 - - "GET /favicon.ico HTTP/1.1" 404 209 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:35.0) Gecko/20100101 Firefox/35.0"

2020-05-11T18:23:45+0000 78.172.44.50 - - "GET /favicon.ico HTTP/1.1" 404 209 "-" "Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:35.0) Gecko/20100101 Firefox/35.0"

2020-05-11T18:23:45+0000 150.70.97.118 - - "GET /favicon.ico HTTP/1.1" 404 233 "-" "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)"

2020-05-11T18:23:45+0000 150.70.97.122 - - "GET /run HTTP/1.1" 200 54 "-" "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0)"
```

MIT &copy; Nikhil Srivastava

