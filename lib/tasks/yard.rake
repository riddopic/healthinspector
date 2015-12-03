# encoding: UTF-8

require 'yard'

unless HealthInspector::Tasks.task_defined?(:yard)
  YARD::Rake::YardocTask.new do |t|
    t.files = %w[**/*.rb - README.md LICENSE]
    t.stats_options = %w[--list-undoc]
  end
end
