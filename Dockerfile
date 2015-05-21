FROM postgres:9.4.1
MAINTAINER Andreas Wålm <andreas@walm.net>

RUN apt-get update \
    && apt-get install -y build-essential git-core postgresql-server-dev-$PG_MAJOR \
    && apt-get install -y curl \
    && rm -rf /var/lib/apt/lists/*

# install pgTap and pg_prove
RUN curl -LO http://xrl.us/cpanm \
    && chmod +x cpanm \
    && ./cpanm TAP::Parser::SourceHandler::pgTAP \
    && git clone git://github.com/theory/pgtap.git \
    && cd pgtap && make

ADD ./test.sh /test.sh
RUN chmod +x /test.sh

WORKDIR /

CMD ["/test.sh"]
ENTRYPOINT ["/test.sh"]
