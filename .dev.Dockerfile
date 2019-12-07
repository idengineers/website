FROM ruby:2.5.3
WORKDIR /app
COPY . /app
RUN gem install bundler:1.17.1
RUN bundle install
RUN apt-get update && apt-get install -y nodejs postgresql-client
CMD ["tail", "-f", "/dev/null"]
EXPOSE 3000