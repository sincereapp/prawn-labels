require "rubygems"
require "rubygems/package_task"
require 'rake/testtask'

spec = Gem::Specification.load "prawn-labels.gemspec"

Gem::PackageTask.new(spec) do |pkg|

end

desc "Run a console with Prawn/Labels loaded"
task :console do
  require 'irb'
  require 'irb/completion'
  require_relative 'lib/prawn/labels'
  Prawn.debug = true

  ARGV.clear
  IRB.start
end

# Creates and sets the default task.
Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
end

task default: :test
