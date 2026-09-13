source 'https://rubygems.org'

ruby '>= 3.2.0'

# Rails
gem 'rails', '~> 8.0.0'

# Use sqlite3 as the database for all environments
gem 'sqlite3', '~> 2.0'

# Use Puma as the app server
gem 'puma', '~> 6.4'

# Asset pipeline (Sprockets) - needed for the bower assets (bootstrap-sass, angular)
gem 'sprockets-rails'

# Use SCSS for stylesheets (compiles bootstrap-sass; provides sass-rails compatibility)
gem 'sassc-rails'

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Build JSON APIs with ease
gem 'jbuilder'

# Authentication & authorization
gem 'devise'
gem 'pundit'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'debug', platforms: [:mri, :mingw, :x64_mingw]

  gem 'rspec-rails', '~> 6.0'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rubocop', '~> 1.50'

  gem 'capybara'
  gem 'selenium-webdriver', '~> 4.0'

  gem 'database_cleaner'

  gem 'simplecov', require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen'
end
