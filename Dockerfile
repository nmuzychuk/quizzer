FROM ruby:3.3

# Build deps for native gems (sqlite3, sassc, bcrypt) + Node for bower assets
RUN apt-get update -qq && \
    apt-get install -y --no-install-recommends build-essential libyaml-dev nodejs npm && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

ENV APP_PATH /quizzer
RUN mkdir -p ${APP_PATH}
WORKDIR ${APP_PATH}

COPY Gemfile $APP_PATH/Gemfile
COPY Gemfile.lock $APP_PATH/Gemfile.lock
RUN bundle install

COPY . $APP_PATH

# Frontend assets (bower pulls bootstrap-sass / angular / jquery into vendor/assets)
RUN npm install || npm install

EXPOSE 3000
CMD ["bundle", "exec", "rails", "s", "-p", "3000", "-b", "0.0.0.0"]
