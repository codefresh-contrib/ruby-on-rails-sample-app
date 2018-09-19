FROM ruby:2.3.1-slim

RUN apt-get update && \
    apt-get install -y build-essential libcurl4-openssl-dev libxml2-dev libsqlite3-dev libpq-dev nodejs postgresql-client sqlite3 --no-install-recommends && \ 
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*



# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1


ENV APP_PATH /usr/src/app

RUN mkdir -p $APP_PATH

COPY Gemfile $APP_PATH
COPY Gemfile.lock $APP_PATH

WORKDIR $APP_PATH

RUN bundle install

COPY . $APP_PATH

ENV RAILS_ENV development

RUN bin/rake db:migrate 

RUN bin/rake assets:precompile

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
