# Quizzer
[![Build Status](https://travis-ci.org/nmuzychuk/quizzer.svg?branch=master)](https://travis-ci.org/nmuzychuk/quizzer)
[![Coverage Status](https://coveralls.io/repos/github/nmuzychuk/quizzer/badge.svg?branch=master)](https://coveralls.io/github/nmuzychuk/quizzer?branch=master)
[![Code Climate](https://codeclimate.com/github/nmuzychuk/quizzer/badges/gpa.svg)](https://codeclimate.com/github/nmuzychuk/quizzer)

## Overview
Quizzer is a way to play and create simple text quizzes.

App stack
- Rails
- PostgreSQL
- AngularJS, Bootstrap
- RSpec, Capybara

## Getting started

### Heroku
Heroku deployment is available. It uses a free dyno with all the [implied consequences](https://devcenter.heroku.com/articles/free-dyno-hour-faq).

https://intense-coast-37785.herokuapp.com/

### Vagrant
Bring up a Vagrant VM
```console
vagrant up
```
Log in
```console
vagrant ssh
```
Go to the synced folder
```console
cd /vagrant
```

Run the web server
```console
bundle exec rails s -p 4000 -b 0.0.0.0
```

### Test
```console
bundle exec rake
```

## License
Quizzer is licensed under the [GNU Affero General Public License](LICENSE).
