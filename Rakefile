$:.unshift File.expand_path("../lib", __FILE__)
$:.unshift File.expand_path("../features/support", __FILE__)

require 'vagrant'
require 'cucumber/rake/task'

require 'mock_inhalt/version'
require 'test_client'

APP_NAME = "mock_inhalt"
APP_GEM = "#{APP_NAME}-#{MockInhalt::VERSION}.gem"

task :start_tc do
  TestClient.run!
end

Cucumber::Rake::Task.new(:cucumber) do |t|
  t.cucumber_opts = "-f pretty"
end

task :up do
  puts "About to run vagrant-up..."
  env = Vagrant::Environment.new
  env.cli("up")
end

file APP_GEM do
  sh "gem build #{APP_NAME}.gemspec"
end

task :build => APP_GEM

task :install => APP_GEM do
  vm = Vagrant::Environment.new.vms[:default]
  vm.channel.execute "sudo gem install /vagrant/#{APP_GEM}"
end

task :run do
  vm = Vagrant::Environment.new.vms[:default]
  vm.channel.execute APP_NAME
end

task :default => [:build, :cucumber]

