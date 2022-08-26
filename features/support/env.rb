require 'watir'
require 'pry'
require 'securerandom'
require 'faker'

$HOME = File.expand_path(File.join(File.dirname(__FILE__), '../..'))
Faker::Config.locale = 'en-US'