FROM ruby:2.7.0

RUN apt-get update -qq && apt-get install -y \
  build-essential \
  nodejs \
  postgresql

COPY . /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN gem install bundler
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

RUN yarn install --check-files
# Start the main process.
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0", "-p", "3000"]

