# encoding: UTF-8

desc 'Run HealthInspector custom Rubocop style checker'
task :rubocop do
  HealthInspector::Tasks::Rubocop.new.run
end
