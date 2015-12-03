# encoding: UTF-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'English'
require 'healthinspector/tasks/version'

Gem::Specification.new do |gem|
  gem.name             = 'healthinspector'
  gem.version          = HealthInspector::Tasks::VERSION
  gem.authors          = ['Stefano Harding']
  gem.email            = ['sharding@trace3.com']
  gem.description      = 'Shared Rake tasks for HealthStack projects'
  gem.summary          = 'Shared Rake tasks for HealthStack projects'
  gem.homepage         = 'https://github.com/riddopic/healthinspector'
  gem.license          = 'Apache 2.0'

  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- {spec}/*`.split("\n")
  gem.require_paths    = ['lib']
  gem.extra_rdoc_files = %w[LICENSE README.md]

  gem.add_dependency 'rake'
  gem.add_dependency 'rubocop', '= 0.30.0'

  gem.add_development_dependency 'bundler', '~> 1.3'
  gem.add_development_dependency 'pry'
  gem.add_development_dependency 'rspec', '>= 3.0.0'
  gem.add_development_dependency 'rspec-its'
end
