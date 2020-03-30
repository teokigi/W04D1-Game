require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/rps.rb')
also_reload('./models/*')

get '/home' do
end
get '/rules' do
end
get '/game_start' do
end
get '/rock' do
end
get '/paper' do
end
get '/scissors' do
end
get '/rock/rock' do
end
get '/rock/paper' do
end
get '/rock/scissors' do
end
get '/paper/rock' do
end
get 'paper/paper' do
end
get '/paper/scissors' do
end
