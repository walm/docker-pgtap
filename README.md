Postgres pgTap test runner
=========================

[Docker](https://www.docker.com/) image to run [pgTAP](http://pgtap.org) tests using [pg_prove](http://pgtap.org/pg_prove).

# How to use

    docker run --rm -v /local/folder/with/tests/:/t walm/pgtap \
           -h host -u username -w password -d database -t '/t/*.sql'

## Running Tests

It will install [pgTAP](http://pgtap.org) into the target database and uninstall it once it's done testing.

## License

MIT

-----------------------

This project has been inspired by [digit/docker-pg-prove](https://registry.hub.docker.com/u/digit/docker-pg-prove/)

