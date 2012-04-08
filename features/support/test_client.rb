require 'sinatra/base'

class TestClient < Sinatra::Base
  set :port, 8081

  get '/test' do
    haml :index
  end

  get '/error' do
    haml :error
  end
end

