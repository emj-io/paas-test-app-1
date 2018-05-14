# frozen_string_literal: true
require 'sinatra/base'

# :nocov:
if ENV['RACK_ENV'] == 'development'
  require 'sinatra/reloader'
  require 'pry'
  require 'pry-remote'
end
# :nocov:

class TestApp1 < Sinatra::Base
  set :root, File.dirname(__FILE__)

  get '/' do
    'OK'
  end
end
