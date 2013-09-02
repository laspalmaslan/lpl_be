source 'https://rubygems.org'

gem 'rails', '3.2.13'
gem 'jquery-rails'
gem 'pg'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'bootstrap-sass'
  gem 'font-awesome-sass-rails'
  gem 'bootswatch-rails'
  gem 'uglifier'
  #javascript text editor
  gem "ckeditor", git: "git://github.com/galetahub/ckeditor.git"
end

group :test do
  gem "rspec-rails", :group => [:test, :development]
  gem 'faker'
  #html parser for all actions on pages.
  gem 'capybara-firebug'
  gem "factory_girl_rails"
  gem "capybara"
  gem "guard-rspec"
  gem "database_cleaner"
  gem "selenium-webdriver"
end

#Autenticacion system
gem "devise"
#views format
gem "haml-rails"
#forms engine
gem "simple_form"
#upload files
gem "paperclip"
#heroku s3
gem 'aws-sdk'
#nested attributes
gem "nested_form"
  gem 'bourbon'

group :development, :test do
  # To use debugger
  gem 'sqlite3'
  gem "debugger"
end


# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Deploy with Capistrano
# gem 'capistrano'

# To solve rake db:create problem
gem 'therubyracer', require: "v8"

# Server unicorn
gem 'unicorn'
