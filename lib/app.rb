require 'sinatra'
require 'sinatra/activerecord'

set :database_file, "../config/database.yml"

require './lib/models'

get '/' do
  @users = User.all
  erb :index
end