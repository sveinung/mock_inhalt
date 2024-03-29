$:.unshift File.expand_path("../lib", __FILE__)

require 'rake'

require 'mock_inhalt/version'

Gem::Specification.new do |s|
  s.name = 'mock_inhalt'
  s.version = MockInhalt::VERSION
  s.date = '2012-04-03'
  s.summary = 'MockInhalt'
  s.description = 'A simple web app for mocking the content of iframes.'
  s.authors = ["Sveinung Dalatun"]
  s.email = 'sdalatun@gmail.com'
  s.files = FileList['lib/**/*', 'bin/*'].to_a
  s.homepage = 'http://github.com/sveinung/mock_inhalt'
  s.add_runtime_dependency 'sinatra'
  s.add_runtime_dependency 'haml'
  s.executables << 'mock_inhalt'
end
