source 'https://rubygems.org'

gem 'rails', '3.2.8'
gem 'jquery-rails'
gem 'pg'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'compass-rails'
  gem 'susy'
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'bootstrap-sass'
  gem 'font-awesome-sass-rails'
  gem 'uglifier'
  #javascript text editor
  gem "ckeditor", git: "git://github.com/galetahub/ckeditor.git"
end

gem "rspec-rails", :group => [:test, :development]
group :test do
  gem 'faker'
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

group :development, :test do
  # To use debugger
  gem 'sqlite3'
  gem "debugger"
end

