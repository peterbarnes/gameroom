class Gameroom < Sinatra::Base
  
  get '/' do
    erb :index, :layout => :layout
  end

  get '/contact' do
    erb :contact, :layout => :layout
  end

  get '/services' do
    erb :services, :layout => :layout
  end

  get '/index' do
    redirect "/"
  end

  get '/products' do
    erb :products, :layout => :layout
  end

  get '/about' do
    erb :about, :layout => :layout
  end

  post '/contact' do
    "I'm here"
  end
end