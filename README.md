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
Heroku deployment is available

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

### Docker
Update database connection
```console
sed -i "/timeout/a \\  username: postgres\n  password:\n  host: postgres" config/database.yml
```

Start containers
```console
docker-compose up
```

Setup database
```console
docker-compose run web bundle exec rake db:setup
```

Install required web components
```console
docker-compose run web bower install --allow-root
```

### Test
```console
bundle exec rake
```

## License
Quizzer is licensed under the [GNU Affero General Public License](LICENSE).
