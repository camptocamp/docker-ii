FROM debian:jessie

RUN apt-get update \
  && apt-get install -y ii \
  && rm -rf /var/lib/apt/lists/*

RUN useradd -u 999 ii

RUN mkdir /tmp/irc && chown ii /tmp/irc

USER ii

VOLUME ["/tmp/irc"]

ENTRYPOINT ["ii", "-i", "/tmp/irc"]
