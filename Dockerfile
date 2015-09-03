FROM ubuntu:trusty
MAINTAINER erik@elastic.co

RUN apt-get update \
    && apt-get install -y --no-install-recommends curl python-openssl \
    && curl -sL https://deb.nodesource.com/setup | bash - \
    && apt-get update \
    && apt-get install -y --no-install-recommends nodejs npm \
    && ln -s /usr/bin/nodejs  /usr/bin/node \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install -g figlet-cli

COPY figenter.sh /tmp/figenter.sh
RUN install -m 755 /tmp/figenter.sh /usr/local/bin/figenter.sh
ENTRYPOINT [ "/usr/local/bin/figenter.sh"]
CMD ["test", "message"]

