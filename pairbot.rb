require 'pry'
gem 'sinatra', '1.3.0'
require 'sinatra'
require 'sinatra/reloader'

get '/' do 
  @message = "Do you have a test for that?"
  @yes = "/pass"
  @no = "/write_test"
  erb :bot
end

get "/pass" do
  @message = "Does the test pass?"
  @yes = "/refactor"
  @no = "/write_code"
  erb :bot
end

get "/write_test" do
  @message = "Write a test."
  @yes = "/pass"
  @no = "/write_test"
  erb :bot
end

get "/refactor" do
  @message = "Need to refactor?"
  @yes = "/do_refactor"
  @no = "/new_feature"
  erb :bot
end

get "/write_code" do
  @message = "Write just enough code for the test to pass."
  @yes = "/pass"
  @no = "/write_code"
  erb :bot
end

get "/do_refactor" do
  @message = "Refactor the code."
  @yes = "/pass"
  @no = "/do_refactor"
  erb :bot
end

get "/new_feature" do
  @message = "Select a new feature to implement."
  @yes = "/"
  @no = "/new_feature"
  erb :bot
end

