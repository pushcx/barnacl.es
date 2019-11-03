source "https://rubygems.org"

ruby "2.6.5"

gem 'rack-host-redirect'
gem "rails", "~> 5.2.0"
gem 'sprockets', '~>3.0'

gem "puma"
gem "rails_12factor"

#gem "mysql2", ">= 0.3.14"
gem "pg"
# NOTE: If you use PostgreSQL, you must still leave enabled the above mysql2
# gem for Sphinx full text search to function.

#gem "thinking-sphinx", "~> 3.1.2"
#gem 'flying-sphinx',   '1.2.0'

# rails
gem 'scenic'
gem 'scenic-mysql_adapter'
gem "activerecord-typedstore"

# js
gem "dynamic_form"
gem "jquery-rails", "~> 4.3"
gem "json"
gem "uglifier", ">= 1.3.0"

# deployment
gem "actionpack-page_caching"
gem "exception_notification"
gem "postmark-rails"

# security
gem "bcrypt", "~> 3.1.2"
gem "rotp"
gem "rqrcode"

# parsing
gem "nokogiri", ">= 1.7.2"
gem "htmlentities"
gem "commonmarker", "~> 0.14"

# for twitter-posting bot
gem "oauth" # for twitter-posting bot
gem "mail" # for parsing incoming mail
gem "ruumba" # tests views
gem "sitemap_generator" # for better search engine indexing
gem 'transaction_retry' # mitigate https://github.com/lobsters/lobsters-ansible/issues/39

group :test, :development do
  gem 'bullet'
  gem 'capybara'
  gem 'database_cleaner'
  gem 'good_migrations'
  gem "listen"
  gem "rspec-rails"
  gem "factory_bot_rails"
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "faker"
  gem "byebug"
  gem "rb-readline"
end
