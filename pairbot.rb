require 'pry'
gem 'sinatra', '1.3.0'
require 'sinatra'
require 'sinatra/reloader'

get '/' do 
  "Hello, World!"
  erb :bot
end
