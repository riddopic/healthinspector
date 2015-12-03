# encoding: UTF-8

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))

# Load shared spec files
Dir["#{File.dirname(__FILE__)}/shared/**/*.rb"].each do |file|
  require file
end

require 'healthinspector/tasks'
require 'rspec/its'
