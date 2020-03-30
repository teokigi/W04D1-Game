require('sinatra')
require('sinatra/contrib/all') if development?
require_relative('./models/rps.rb')
also_reload('./models/*')

get '/' do
    erb(:home)
end
get '/rules' do
    erb(:rules)
end
get '/game_start' do
    erb(:game_start)
end
get '/game_start/rock' do
    erb(:game_start_r)
end
get '/game_start/paper' do
    erb(:game_start_p)
end
get '/game_start/scissors' do
    erb(:game_start_s)
end
get '/game_start/:player_one/:player_two' do
    p1 = params['player_one']
    p2 = params['player_two']
    @result = Rps.game_on(p1,p2)
    erb(:result)
end
