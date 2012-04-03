task :cucumber do
  sh "cucumber -f pretty"
end

task :build do
  system "gem build mock_inhalt.gemspec"
end

task :default => [:cucumber]

