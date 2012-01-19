require 'rspec/core/rake_task'
require 'bundler'

Bundler::GemHelper.install_tasks

task :default => :spec

desc "Run specs"
task :spec => ["spec:no_dsl", "spec:dsl"]

namespace :spec do
  desc "Run specs without DSL"
  RSpec::Core::RakeTask.new(:no_dsl) do |t|
    t.rspec_opts = "-t ~dsl"
  end

  desc "Run specs with DSL"
  RSpec::Core::RakeTask.new(:dsl) do |t|
    # Run all tests
  end
end

desc "Push the latest gem"
task :push => :build do
  ENV["RUBYGEMS_HOST"] = "http://localhost:2000"
  system "gem push pkg/e20_unit-*.gem"
end
