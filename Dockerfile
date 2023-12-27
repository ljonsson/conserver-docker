FROM debian:bookworm-slim

LABEL version="0.2.1" maintainer="Lars Jonsson <lars.rl.jonsson@gmail.com>"

RUN apt-get update  \
  && apt-get install -y --no-install-recommends \
  build-essential \
  ca-certificates \
  systemd \
  wget \
  vim

RUN wget https://github.com/bstansell/conserver/releases/download/v8.2.7/conserver-8.2.7.tar.gz \
  && tar xzf conserver-8.2.7.tar.gz \
  && cd conserver-8.2.7 \
  && ./configure --verbose \
  && make \
  && make test \
  && make install

COPY entrypoint.sh /usr/local/bin

VOLUME ["/usr/local"]

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
