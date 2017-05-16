FROM ruby:2.4.0

RUN apt-get update -qq &&              \
    apt-get install -y build-essential \
                       libpq-dev       \
                       libxml2-dev libxslt1-dev \
                       libqt4-webkit libqt4-dev xvfb \
                       nodejs \
                       imagemagick

ENV APP_HOME /hertz
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME
ADD Gemfile* $APP_HOME/

RUN bundle install --jobs 8 --retry 5
