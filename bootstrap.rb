require 'rubygems'
require 'bundler'
require 'net/http'

ENV['RACK_ENV'] ||= 'development'

Bundler.require(:default)
Mongoid.load!('config/mongoid.yml')

Dir['lib/**/*.rb'].each {|file| require_relative file }

require_relative 'gameroom'