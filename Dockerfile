  FROM ruby:2.5
  RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
  RUN mkdir /Pert
  WORKDIR /Pert
  COPY Gemfile /Pert/Gemfile
  COPY Gemfile.lock /Pert/Gemfile.lock
  RUN bundle install
  COPY . /Pert
