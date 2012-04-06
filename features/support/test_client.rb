require 'sinatra/base'

class TestClient < Sinatra::Base
  set :port, 8081

  get '/test' do
    send_file File.join(settings.public_folder, 'index.html')
  end
end

