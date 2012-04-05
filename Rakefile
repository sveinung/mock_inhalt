$:.unshift File.expand_path("../lib", __FILE__)

require 'vagrant'

require 'mock_inhalt/version'

PACKAGE_DIR = "pkg"
APP_NAME = "mock_inhalt"
APP_GEM = "#{APP_NAME}-#{MockInhalt::VERSION}.gem"

task :cucumber do
  sh "cucumber -f pretty"
end

task :up do
  puts "About to run vagrant-up..."
  env = Vagrant::Environment.new
  env.cli("up")
end

file APP_GEM do
  sh "gem build #{APP_NAME}.gemspec"
  sh "mkdir -p #{PACKAGE_DIR}"
  sh "mv #{APP_GEM} #{PACKAGE_DIR}"
end

task :build => APP_GEM

task :install => APP_GEM do
  vm = Vagrant::Environment.new.vms[:default]
  vm.channel.execute "sudo gem install /vagrant/#{PACKAGE_DIR}/#{APP_NAME}-#{MockInhalt::VERSION}.gem"
end

task :run do
  vm = Vagrant::Environment.new.vms[:default]
  vm.channel.execute APP_NAME
end

task :default => [:build, :cucumber]

