source 'https://rubygems.org'
ruby '2.3.1'

## CORE SCAFFOLDED GEMS

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

## USER INTRODUCED GEMS

# View Gems
gem 'simple_form'
gem 'cocoon'
gem 'active_link_to'
gem 'materialize-sass'
gem 'kaminari'
gem 'filterrific'
gem "autoprefixer-rails"
gem 'fullcalendar-rails'
gem 'momentjs-rails'
gem 'pickadate-rails'
gem 'jquery-minicolors-rails'
gem 'selectize-rails'
gem 'font-awesome-rails'
gem 'jquery-ui-rails'
gem 'chosen-rails'

# Engine gems
gem 'devise'
gem 'rails_12factor', group: :production
gem 'aws-sdk'
gem 'sidekiq'
gem 'sidekiq-cron', '~> 0.4.0'
gem 'sinatra', require: nil # for sidekiq UI
gem 'pundit'
gem 'chartkick'
gem 'wkhtmltopdf-binary-edge'
gem 'wicked_pdf'
gem 'groupdate'
gem 'httparty'
gem 'time_difference'
gem 'time_ago_in_words'
gem 'phony_rails'

# The Exception Notification gem provides a set of notifiers for sending notifications when errors occur in a Rack/Rails application.
gem 'exception_notification'
# For sending Exception Notifiers to slack for this app
gem 'slack-notifier'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Dotenv solves the problems of setting project-specific environment vars
  gem 'dotenv-rails'
  # RailRoady generates Rails 3/4 model (ActiveRecord, Mongoid, Datamapper) and controller UML diagrams as cross-platform .svg files, as well as in the DOT language.
  gem 'railroady'
  # Brakeman is an open source static analysis tool which checks Ruby on Rails applications for security vulnerabilities.
  gem 'brakeman', :require => false
  # Better Errors replaces the standard Rails error page with a much better and more useful error page. It is also usable outside of Rails in any Rack app as Rack middleware.
  gem 'better_errors'
  # For migration
  gem 'seed_dump'
  # For less headaches
  gem 'whiny_validation'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.1.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0'
  # If you would like to use Better Errors' advanced features (REPL, local/instance variable inspection, pretty stack frame names), you need to add the binding_of_caller gem
  gem "binding_of_caller"
  # Watch your queries while you develop your application and notify you when you should add eager loading (N+1 queries)
  gem "bullet"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
