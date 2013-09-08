#!/usr/bin/env rake
# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
if ENV["RAILS_ENV"] != "production"
  require 'rspec/core/rake_task'
  task :default => %w(db:create:all db:migrate db:test:prepare spec)
end


require File.expand_path('../config/application', __FILE__)

Lpl::Application.load_tasks
