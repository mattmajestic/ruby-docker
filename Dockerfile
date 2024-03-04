FROM ruby:2.7-alpine

WORKDIR /usr/src/app

COPY . .

CMD ["ruby", "server.rb"]
