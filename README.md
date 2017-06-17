# Quizzer
[![Build Status](https://travis-ci.org/nmuzychuk/quizzer.svg?branch=master)](https://travis-ci.org/nmuzychuk/quizzer)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/5c39734cbc9d468e90f7fbdbce62218b)](https://www.codacy.com/app/nmuzychuk/quizzer)
[![Codacy Badge](https://api.codacy.com/project/badge/Coverage/5c39734cbc9d468e90f7fbdbce62218b)](https://www.codacy.com/app/nmuzychuk/quizzer)

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
```
vagrant up
```
Log in
```
vagrant ssh
```
Go to the synced folder
```
cd /vagrant
```

Run the web server
```
bundle exec rails s -p 4000 -b 0.0.0.0
```

### Docker
Update database connection
```
sed -i "/timeout/a \\  username: postgres\n  password:\n  host: postgres" config/database.yml
```

Start containers
```
docker-compose up
```

Setup database
```
docker-compose run web bundle exec rake db:setup
```

Install required web components
```
docker-compose run web bower install --allow-root
```

## Test
```
bundle exec rake
```

## License
Quizzer is licensed under the [GNU Affero General Public License](LICENSE).
