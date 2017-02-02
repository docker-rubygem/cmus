FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.0.4.6

RUN gem install cmus --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["cmus-remote.rb"]
CMD ["--help"]
