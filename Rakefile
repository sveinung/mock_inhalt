$:.unshift File.expand_path("../lib", __FILE__)
$:.unshift File.expand_path("../features/support", __FILE__)

require 'vagrant'

require 'mock_inhalt/version'
require 'test_client'

PACKAGE_DIR = "pkg"
APP_NAME = "mock_inhalt"
APP_GEM = "#{APP_NAME}-#{MockInhalt::VERSION}.gem"
BUILT_GEM = File.join(PACKAGE_DIR, APP_NAME)

task :start_tc do
  TestClient.run!
end

task :cucumber do
  sh "cucumber -f pretty"
end

task :up do
  puts "About to run vagrant-up..."
  env = Vagrant::Environment.new
  env.cli("up")
end

file BUILT_GEM do
  sh "gem build #{APP_NAME}.gemspec"
  sh "mkdir -p #{PACKAGE_DIR}"
  sh "mv #{APP_GEM} #{PACKAGE_DIR}"
end

task :build => BUILT_GEM

task :install => BUILT_GEM do
  vm = Vagrant::Environment.new.vms[:default]
  vm.channel.execute "sudo gem install /vagrant/#{BUILT_GEM}"
end

task :run do
  vm = Vagrant::Environment.new.vms[:default]
  vm.channel.execute APP_NAME
end

task :default => [:build, :cucumber]

