source 'https://rubygems.org'


ruby '2.3.0' #Ruby version we're running
group :development, :test do
  #make sure sqlite3 gem ONLY occurs inside development & test groups
  gem 'sqlite3'
  gem 'database_cleaner', '1.4.1'
  gem 'capybara', '2.4.4'
  gem 'launchy'
  gem 'rspec-rails', '3.4.2'
  gem 'ZenTest', '4.11.0'
end
group :production do
  #make sure the following gems are in your production group:
  gem 'pg'
  gem 'rails_12factor' #Heroku-specific production settings
end

gem 'haml-rails', '>= 0.3.4'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.5'
# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rerun'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

  #gem 'therubyracer', '~> 0.12.0'

gem 'haml'
