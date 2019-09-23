source "https://rubygems.org"

gem 'selenium-webdriver'
branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem "solidus", github: "solidusio/solidus", branch: branch
gem 'yourbase-rspec-skipper'
if branch != 'master' && branch < "v2.0"
  gem "rails_test_params_backport", group: :test
end

group :development, :test do
  gem "pry-rails"
end

if ENV['DB'] == 'mysql'
  gem 'mysql2'
else
  gem 'pg'
end

group :test do
  if branch < "v2.5"
    gem 'factory_bot', '4.10.0'
  else
    gem 'factory_bot', '> 4.10.0'
  end
end

gemspec
