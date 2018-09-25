require 'sinatra'

get '/' do
  erb :calculator
end

get '/launch_script' do
  load 'C:\Users\samue\Documents\Code\calculator_app\calculator_basic.rb'
end
