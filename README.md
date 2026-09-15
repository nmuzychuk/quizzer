# Quizzer
[![Ruby](https://github.com/nmuzychuk/quizzer/actions/workflows/ruby.yml/badge.svg)](https://github.com/nmuzychuk/quizzer/actions/workflows/ruby.yml)

## Overview
Quizzer is a way to play and create simple text quizzes.

> This project was modernized — dependencies, toolchain, Docker, CI, and tests —
> entirely by **Qwen 3.8 27B**.

## Major upgrades
The application was lifted from a legacy Rails 4 / Ruby 2.x / PostgreSQL codebase to a
modern, self-contained stack, without a system-wide toolchain (Ruby is installed inside
the workspace).

| Layer | Before | Now |
|-------|--------|-----|
| Language | Ruby 2.3 | **Ruby 3.3.12** |
| Web framework | Rails 4 | **Rails 8.0** |
| Database | PostgreSQL 9.5 | **SQLite3** (gem `sqlite3` 2.9) |
| Server | — | **Puma** 6.6 |
| Auth | Devise (old) | **Devise** 5.0 |
| Authorization | Pundit (old) | **Pundit** 2.5 |
| Testing | RSpec / Capybara (old) | **RSpec** 6.1, **Capybara** 3.40, **Selenium** 4.49 |
| Frontend | AngularJS 1.6, Bootstrap 3.3 | AngularJS 1.6, Bootstrap 3.3 (Sprockets/Bower) |
| Packaging | Vagrant + manual | **Docker** (`ruby:3.3` base) + **GitHub Actions** |

Full app stack:
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
