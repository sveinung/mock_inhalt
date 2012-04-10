require 'sinatra/base'
require 'haml'

class MockInhalt < Sinatra::Base
  set :port, 8080
  set :protection, :except => :frame_options

  get '/mockinhalt' do
    haml :mock_inhalt
  end

  post '/mockinhalt' do
    haml :mock_inhalt
  end
end

