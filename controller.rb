require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry'
require_relative"./models/game"
also_reload './models/*'


get '/' do
  "Welcome to the Game!"
end

get '/:element1/:element2' do
  game = Game.new(options)
  game.check_who_wins(params[:element1], params[:element2])
end

get '/the_rules' do
  erb(:the_rules)
end
