# encoding: UTF-8

require 'foodcritic'

unless HealthInspector::Tasks.task_defined?(:foodcritic)
  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef) do |t|
    t.options = {
      search_gems:   true,
      tags:        ['~FC001'],
      fail_tags:   ['any'],
      chef_version: '11.6.0',
      include:      'test/support/foodcritic/*'
    }
  end
end
