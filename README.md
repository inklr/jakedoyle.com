# README

Setup:
* Install Ruby 2.3.3
* Clone repository
* Navigate to repository
* $> gem install rails
* $> bin/bundle install

Test:
* $> bin/rails db:migrate RAILS_ENV=test
* $> bin/rails test

Development:
* $> bin/rails db:migrate RAILS_ENV=development
* $> bin/rails server
