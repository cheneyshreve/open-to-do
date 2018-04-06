source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'figaro'
gem 'bootstrap-sass'

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'sqlite3'
  gem 'web-console', '~> 2.0'
  gem 'listen'
end

 group :development, :test do
   gem 'byebug'
   gem 'spring'
   gem 'shoulda'
   gem 'faker'
   gem 'factory_bot_rails'
   gem 'pry-rails'
   gem 'better_errors'
   gem 'rspec-rails', '~> 3.0'
   gem 'rails-controller-testing'
 end
