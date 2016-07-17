source 'https://rubygems.org'
ruby '2.2.1'

gem 'rails', '4.2.6'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'figaro' #for hiding and accessing env variables and api key/secret
gem 'devise' # make users easier
gem 'omniauth'
gem 'omniauth-facebook' #sign in with facebook
gem 'pundit'  #set roles and policies
gem 'bourbon' #gonna try this fun thing!! better than bootstrap
gem 'neat'
gem 'will_paginate', '~> 3.1.0' #the list can get quite long
gem 'high_voltage', '~> 3.0.0' #desplay static pages  page_path
gem 'bootstrap-sass' # would never have 2 style libraries / just trying things
gem 'font-awesome-sass', '~> 4.6.2'
group :development, :test do
  gem 'web-console', '~> 2.0'
  gem 'sqlite3'  #put in test, use postgresql for deploy to heroku....
  gem 'spring'
  gem 'pry'
  gem 'guard'
  gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/i   #use for testing
  gem 'guard-rspec'
end
