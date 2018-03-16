FROM debian
VOLUME /root

RUN apt-get update && apt-get install -y \
  apt-transport-https \
  gnupg \
  wget

RUN wget -qO - https://apt.z.cash/zcash.asc | apt-key add - && \
  echo "deb [arch=amd64] https://apt.z.cash/ jessie main" | tee /etc/apt/sources.list.d/zcash.list && \
  apt-get update && apt-get install -y \
    zcash

ADD zcash.conf /root/.zcash/zcash.conf
ADD docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["docker-entrypoint.sh"]

