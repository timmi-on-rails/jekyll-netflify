# jekyll had issues with ruby 3.x (missing webrick)
# try again, when it's supported
FROM ruby:2.7-alpine

# install nodejs, npm and jekyll dependencies
RUN apk add --no-cache npm make gcc g++ musl-dev

# pre-install jekyll for faster container startup
RUN gem install jekyll -v 4.2.1

RUN gem install bundler

WORKDIR /srv/jekyll
ENV BUNDLE_SILENCE_ROOT_WARNING=1
