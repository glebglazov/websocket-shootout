FROM ruby:2.5-slim

RUN apt-get update -qq
RUN apt-get install -y curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -qq
RUN apt-get install -y build-essential \
                       mysql-client \
                       default-libmysqlclient-dev \
                       nodejs \
                       yarn \
                       cmake \
                       pkg-config \
                       git \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir /actioncable
WORKDIR /actioncable

ADD Gemfile /actioncable/Gemfile
ADD Gemfile.lock /actioncable/Gemfile.lock

RUN bundle install --jobs 4

COPY . /actioncable