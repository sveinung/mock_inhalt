require 'sinatra/base'
require 'haml'

class MockInhalt < Sinatra::Base
  set :port, 8080

  get '/' do
    haml :mock_inhalt
  end
end

