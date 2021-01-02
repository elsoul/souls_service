# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem "activerecord", require: "active_record"
gem "dotenv-rails", "2.7.6"
gem "faker", "2.14.0"
gem "google-cloud-firestore", "2.4.0"
gem "grpc", "1.34.0"
gem "grpc-tools", "1.34.0"
gem "pg", ">= 0.18", "< 2.0"
gem "rake", "13.0.3"
gem "souls", "0.7.0"
gem "zeitwerk", "2.4.1"

group :development, :test do
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  gem "capybara", "2.18.0"
  gem "capybara-user_agent", "0.0.3"
  gem "database_cleaner", "1.8.5"
  gem "rack-test", "1.1.0"
  gem "rspec", "3.10.0"
  gem "rubocop", "1.7.0"
  gem "webmock", "3.11.0"
end
