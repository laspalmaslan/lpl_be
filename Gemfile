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
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bootstrap-sass', '~> 2.1.0.0'
  gem 'font-awesome-sass-rails'
  gem 'uglifier', '>= 1.0.3'
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
gem 'aws-sdk', '~> 1.3.4'
#nested attributes
gem "nested_form"

group :development, :test do
  # To use debugger
  gem 'sqlite3'
  gem "debugger"
end

