FROM ruby:2.3.0

RUN apt-get update -qq && apt-get install -y nodejs-legacy npm
ENV APP_PATH /quizzer
RUN mkdir $APP_PATH
WORKDIR $APP_PATH

ADD Gemfile $APP_PATH/Gemfile
ADD Gemfile.lock $APP_PATH/Gemfile.lock
RUN bundle install

ADD . $APP_PATH

RUN npm install -g bower && bower install --allow-root
