# Quizzer
[![Ruby](https://github.com/nmuzychuk/quizzer/actions/workflows/ruby.yml/badge.svg)](https://github.com/nmuzychuk/quizzer/actions/workflows/ruby.yml)

## Overview
Quizzer is a way to play and create simple text quizzes.

App stack:
- Ruby 3.3
- Rails 8
- SQLite3
- AngularJS, Bootstrap
- RSpec, Capybara, Selenium

## Prerequisites
- Ruby 3.3+
- [Bundler](https://bundler.io/)
- Node.js (used to fetch the Bootstrap/Angular frontend assets)

## Getting started (local)
```bash
# Install Ruby dependencies (into vendor/bundle)
bundle install

# Install frontend assets (bootstrap-sass, angular, jquery)
npm install

# Create the database and load the schema
bundle exec rails db:prepare

# Start the web server
bundle exec rails s -p 3000 -b 0.0.0.0
```

Open http://localhost:3000

## Running the tests
```bash
# Full suite (feature specs use a headless Chrome browser via Selenium)
bundle exec rspec

# Everything except browser feature specs
bundle exec rspec --tag ~feature
```

## Docker
The quickest way to run the app. The database is SQLite and lives in `db/*.sqlite3`, which is mounted from the host — no separate database container is needed.

```bash
# Build and start the app
docker compose up --build

# One-off commands inside the container
docker compose run web bundle exec rails db:prepare
docker compose run web bundle exec rspec --tag ~feature
```

The app is served at http://localhost:3000.

## Vagrant
Bring up a Vagrant VM
```bash
vagrant up
```
Log in
```bash
vagrant ssh
```
Go to the synced folder
```bash
cd /vagrant
```

Install dependencies and set up the database
```bash
bundle install
npm install
bundle exec rails db:prepare
```

Run the web server
```bash
bundle exec rails s -p 4000 -b 0.0.0.0
```

## License
Quizzer is licensed under the [GNU Affero General Public License](LICENSE).
