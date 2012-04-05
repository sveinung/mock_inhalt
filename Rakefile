require 'vagrant'

task :cucumber do
  sh "cucumber -f pretty"
end

task :up do
  puts "About to run vagrant-up..."
  env = Vagrant::Environment.new
  env.cli("up")
end

task :build do
  system "gem build mock_inhalt.gemspec"
end

task :default => [:build, :cucumber]

