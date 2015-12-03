# encoding: UTF-8

require 'rspec/core'
require 'rspec/core/rake_task'

unless HealthInspector::Tasks.task_defined?(:spec)
  RSpec::Core::RakeTask.new(:spec) do |spec|
    spec.pattern = 'spec/**/*_spec.rb'
    spec.rspec_opts = '-c'
    spec.rspec_opts << '-fd'
  end
end
