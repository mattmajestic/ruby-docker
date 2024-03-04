FROM ruby:2.7-alpine

WORKDIR /usr/src/app

COPY . .

EXPOSE 8000

CMD ["ruby", "server.rb"]
