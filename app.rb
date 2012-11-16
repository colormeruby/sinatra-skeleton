# Sinatra sings a duet with Kaleb Heitzman
# This ballad performed on October 30, 2012
# Contact kalebheitzman@me.com if you need help

# Require Sinatra and Gems
require 'rubygems'
require 'bundler'
require 'sinatra'
require 'data_mapper'
require 'sprockets'
require 'slim'

# Setup DataMapper Loggin
DataMapper::Logger.new($stdout, :debug)

# Set up DataMapper
DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")

# Initialize App Seetings
require_relative 'routes/init'
require_relative 'helpers/init'
require_relative 'models/init'
  
# Session Management
enable :sessions
set :session_secret, 'a secret key'

# Set some other params
set :public_folder, './assets'

# Production Enviornment Settings
configure :production do
  set :raise_erorrs, false
  set :show_exceptions, false
end

# Development Environment Settings
configure :development do
  # enable dev features
  enable :logging, :dump_errors, :raise_errors
  # Auto Upgrade with DataMapper without destroying your data
  DataMapper.auto_upgrade!
end

# Set some params
configure do
  set :app_file, __FILE__
end

