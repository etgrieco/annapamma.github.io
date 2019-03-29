FROM ruby:2.6.2-alpine

RUN apk add build-base ruby-dev && gem install jekyll

WORKDIR /app/

COPY . .

EXPOSE 3000

CMD jekyll serve --host 0.0.0.0