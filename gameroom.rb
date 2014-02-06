class Gameroom < Sinatra::Base
  get "/search" do
    password = ENV['API_KEY'] || 'password'
    resource = RestClient::Resource.new( "http://gameroom.cashierapp.com/api/users?search=#{params[:query]}", { :user => 'x', :password => password})
    response = resource.get
    @results = JSON.parse(response.to_str)
   
     erb :search
  end
  
  get '/' do
    @widgets = Widget.all
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
  
  get '/delete' do
    @widget = Widget.find(params[:id])
    @widget.destroy
    redirect '/'
  end

  get '/products' do
    erb :products, :layout => :layout
  end

  get '/about' do
    erb :about, :layout => :layout
  end

  post '/create' do
    @widget = Widget.create(:name => params[:name])
    redirect '/'
  end
end