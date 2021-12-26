FROM osgeo/gdal:ubuntu-small-3.4.0

# Install wget and misc python deps
RUN apt-get update && \
    apt-get upgrade -yqq && \
    apt-get install -yqq wget python3-pip python3-dev libpq-dev

# install node/npm
RUN \
  echo "deb https://deb.nodesource.com/node_14.x buster main" > /etc/apt/sources.list.d/nodesource.list && \
  wget -qO- https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
  apt-get update && \
  apt-get install -yqq nodejs

