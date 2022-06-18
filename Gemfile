source 'https://rubygems.org'

ruby '~> 3.0.0'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.2.1'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 5.2.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 6.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 5.0.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.11'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 11.1.3', platforms: %i[mri mingw x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara',                 '~> 3.35.3'
  gem 'factory_bot_rails',        '~> 6.1.0'
  gem 'rails-controller-testing', '~> 1.0.5', require: false
  gem 'rspec-its',                '~> 1.3.0', require: false
  gem 'rspec-rails',              '~> 4.0.2'
  gem 'selenium-webdriver',       '~> 3.142.7'
  gem 'shoulda-matchers',         '~> 4.5.1',  require: false
  gem 'simplecov',                '~> 0.21.2', require: false
  gem 'simplecov-console',        '~> 0.9.1',  require: false
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'listen', '~> 3.4.1'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'better_errors',         '~> 2.9.1'
  gem 'binding_of_caller',     '~> 1.0.0'
  gem 'bullet',                '~> 6.1.3'
  gem 'pry-rails',             '~> 0.3.9'
  gem 'rubocop',               '~> 1.10.0', require: false
  gem 'rubocop-rails',         '~> 2.9.1',  require: false
  gem 'spring',                '~> 2.1.1'
  gem 'spring-commands-rspec', '~> 1.0.4'
  gem 'spring-watcher-listen', '~> 2.0.1'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Locale plugins
gem 'devise-i18n', '~> 1.6.2'
gem 'rails-i18n',  '~> 6.0.0'

# ActiveRecord plugins
gem 'devise', '~> 4.7.3'

# Design
gem 'bootstrap', '~> 4.6.0'

# use JQuery
gem 'jquery-rails', '~> 4.4'

# image upload
gem 'carrierwave',   ' ~> 2.0'
# image upload (localize.JP)
gem 'carrierwave-i18n', '~> 0.2.0'

# pagination
gem 'kaminari', git: 'https://github.com/kaminari/kaminari'

gem 'net-imap'
gem 'net-pop'
gem 'net-smtp'