Gem::Specification.new do |s|
  s.name = 'mock_inhalt'
  s.version = '0.0.0'
  s.date = '2012-04-03'
  s.summary = 'MockInhalt'
  s.description = 'A simple web app for mocking the content of iframes.'
  s.authors = ["Sveinung Dalatun"]
  s.email = 'sdalatun@gmail.com'
  s.files = ["lib/mock_inhalt.rb"]
  s.homepage = 'http://github.com/sveinung/mock_inhalt'
  s.add_runtime_dependency 'sinatra'
  s.executables << 'mock_inhalt'
end
