source "https://rubygems.org"

gem 'selenium-webdriver'
branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem "solidus", github: "solidusio/solidus", branch: branch

group :development, :test do
  gem "pry-rails"
end

if ENV['DB'] == 'mysql'
  gem 'mysql2', '~> 0.4.10'
else
  gem 'pg', '~> 0.21'
end

group :test do
  if branch < "v2.5"
    gem 'factory_bot', '4.10.0'
  else
    gem 'factory_bot', '> 4.10.0'
  end
end

gemspec
