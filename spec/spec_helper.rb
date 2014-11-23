# encoding: utf-8
# Code Climate

require "codeclimate-test-reporter"
require 'rspec'
require 'simplecov'
require 'builder'

require 'active_support'
require 'active_support/core_ext/string/strip.rb'
require 'rspec/matchers'
require 'equivalent-xml'
require File.dirname(__FILE__) + '/../lib/generator.rb'

CodeClimate::TestReporter.start

SimpleCov.start

ENV['RACK_ENV'] = 'test'
