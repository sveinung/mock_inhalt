require 'sinatra/base'

class MockInhalt < Sinatra::Base
  set :port, 8080

  get '/' do
    'Hello MockInhalt!'
  end
end

