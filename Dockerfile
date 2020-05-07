FROM ruby:2.7
RUN apt-get update -qq \
    && apt-get upgrade -y \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get install -y nodejs postgresql-client
RUN mkdir /app
WORKDIR /app

RUN node -v
RUN npm -v

COPY Gemfile Gemfile.lock package.json yarn.lock ./
RUN bundle install --jobs 4 --retry 3
RUN npm install -g yarn
RUN yarn install --check-files
COPY . ./

# Add a script to be executed every time the container starts.
COPY docker-entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/docker-entrypoint.sh
ENTRYPOINT ["docker-entrypoint.sh"]

EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
