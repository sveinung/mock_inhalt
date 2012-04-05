$:.unshift File.expand_path("../lib", __FILE__)

require 'vagrant'

require 'mock_inhalt/version'

PACKAGE_DIR = "pkg"
APP_NAME = "mock_inhalt"

task :cucumber do
  sh "cucumber -f pretty"
end

task :up do
  puts "About to run vagrant-up..."
  env = Vagrant::Environment.new
  env.cli("up")
end

task :build do
  sh "gem build #{APP_NAME}.gemspec"
  sh "mkdir -p #{PACKAGE_DIR}"
  sh "mv #{APP_NAME}-#{MockInhalt::VERSION}.gem #{PACKAGE_DIR}"
end

task :default => [:build, :cucumber]

