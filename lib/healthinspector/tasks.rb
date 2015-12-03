# encoding: UTF-8

require 'healthinspector/tasks/rubocop'
require 'healthinspector/tasks/version'

module HealthInspector
  module Tasks
    def self.load_tasks
      glob = File.join(File.dirname(__FILE__), '..', 'tasks', '**', '*.rake')
      Dir.glob(glob).each { |file| load file }
      Rake::Task.tasks
    end

    def self.clear_task(task_name)
      Rake::Task[task_name].clear if task_defined?(task_name)
    end

    def self.task_defined?(task_name)
      Rake::Task.tasks.map(&:name).include?(task_name.to_s)
    end
  end
end
