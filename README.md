Riemann docker image that allows you to run tests.

Mount your config files in /opt/riemann/etc. You should have a file named riemann.config (and optional riemann-config.test).

Example command to run riemann:

```
docker run --name=riemann-local \
    -p "5555:5555" \
    -p "5556:5556" \
    -v "$(pwd)/conf/riemann:/opt/riemann/etc" \
    -d pmazurek/riemann
```


Example command to run the tests:
```
docker run -v "$(pwd)/conf/riemann:/opt/riemann/etc" pmazurek/riemann test /opt/riemann/etc/riemann.config-test
```
