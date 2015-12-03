# encoding: UTF-8

require 'kitchen/rake_tasks'

namespace :integration do
  desc 'run Test Kitchen'
  task :docker do
    Kitchen.logger = Kitchen.default_file_logger
    Kitchen::Config.new.instances.each do |instance|
      instance.test(:always)
    end
  end

  desc 'run Test Kitchen concurrently for all instances'
  task :concurrent do
    Kitchen.logger = Kitchen.default_file_logger
    @loader = Kitchen::Loader::YAML.new(local_config: '.kitchen.yml')
    config = Kitchen::Config.new(loader: @loader)
    concurrency = config.instances.size
    queue = Queue.new
    config.instances.each {|i| queue << i }
    concurrency.times { queue << nil }
    threads = []
    concurrency.times do
      threads << Thread.new do
        while instance = queue.pop
          instance.test(:always)
        end
      end
    end
    threads.map { |i| i.join }
  end
end
