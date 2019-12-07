FROM ruby:2.5.3-alpine 
WORKDIR /app 
COPY . /app 
RUN gem install bundler:1.17.1
RUN bundle install 
RUN apt-get update && apt-get install -y nodejs
RUN bundle exec rake db:migrate
CMD ["foreman", "start"]
EXPOSE 3000
