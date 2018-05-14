ENV['RACK_ENV'] = 'test'

require 'simplecov'
SimpleCov.minimum_coverage 100
SimpleCov.start

require 'minitest/autorun'
require 'rack/test'
require 'minitest/unit'
require 'minitest-ci'

require File.expand_path '../test_app_1.rb', __dir__
