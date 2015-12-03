# HealthInspector::Tasks

Shared Rake tasks for HealthStack project.

## Installation

Add the following line to your application's Gemfile:

    gem 'healthinspector'

And then run `bundle install`.

## Usage

Add the following to your Rakefile:

    require 'healthinspector/tasks'
    HealthInspector::Tasks.load_tasks

## Available Tasks

| Task Name | Purpose |
| ---------:| ------- |
| `spec` | Runs the spec suite with standard formatting |
| `rubocop` | Checks code against the approved Ruby style guide |
| `ci` | Runs the suite of tasks performed by continuous integration |
