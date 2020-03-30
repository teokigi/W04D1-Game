require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('models/calculator.rb')
also_reload('./models/*')
