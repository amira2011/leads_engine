source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in leads_engine.gemspec.
gemspec

gem "puma"

gem 'sqlite3', '~> 1.4'

gem "mysql2"

gem "sprockets-rails"

gem 'rubocop-rails', require: true
gem 'rubocop-rspec', require: false
gem 'rubocop-rspec_rails', require: false

# Start debugger with binding.b [https://github.com/ruby/debug]
# gem "debug", ">= 1.0.0"
group :development, :test do
  gem 'factory_bot_rails'
  gem 'guard'
  gem 'guard-brakeman'
  gem('guard-erb_lint', github: 'Driversnote-Dev/guard-erb_lint', branch: 'master')
  gem 'guard-eslint'
  gem 'guard-reek'
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', require: false
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'rubocop'
end