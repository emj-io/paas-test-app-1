FROM ruby:2.4.4-alpine

WORKDIR /app

RUN apk add --no-cache build-base

ADD Gemfile /app
ADD Gemfile.lock /app
ADD vendor/cache /app/vendor/cache

RUN bundle install
RUN apk del build-base

ADD . /app

CMD ["/bin/sh","scripts/start"]
EXPOSE 3600
