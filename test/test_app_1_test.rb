ENV['RACK_ENV'] = 'test'

require File.expand_path '../test_helper.rb', __FILE__
require 'minitest'
require 'rack/test'
require 'sinatra'

class TestApp1Tests < Minitest::Test
  include Rack::Test::Methods

  def app
    TestApp1
  end

  def test_root_returns_OK
    get '/'
    assert last_response.ok?
    assert_equal 'OK', last_response.body
  end
end
