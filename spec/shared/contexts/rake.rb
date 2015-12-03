# encoding: UTF-8

require 'spec_helper'
require 'rake'

shared_context 'rake' do
  let(:rake)      { Rake::Application.new }
  let(:task_name) { self.class.top_level_description[/rake (.+)/, 1] }
  subject         { rake[task_name] }

  before do
    Rake.application = rake
    HealthInspector::Tasks.load_tasks
  end
end
