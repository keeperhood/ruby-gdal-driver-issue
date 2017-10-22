FROM ruby:2.2.2

RUN DEBIAN_FRONTEND=noninteractive apt-get -qq update \
  && apt-get --fix-missing install -y --force-yes \
  build-essential g++ make pkg-config \
  wget vim git openssl libssl-dev\
  python-pip python-numpy python-dev \
  zlib1g-dev libkml-dev libproj-dev libgeos-dev libpq-dev \
  libgdal-dev libgdal1h gdal-bin python-gdal \
  readline-common

RUN gem update --system
RUN gem install bundler
RUN gem install gdal

COPY test.cpp /
COPY test.rb /
COPY test.sh /
RUN chmod +x /test.sh

RUN rm -rf /var/lib/apt/lists/*