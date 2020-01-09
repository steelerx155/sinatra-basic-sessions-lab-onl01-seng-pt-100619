require_relative 'config/environment'

class App < Sinatra::Base
  
  
  configure do
  enable :sessions
  end
  
  get "/" do 
    erb :index
    
  end
  
  post "/checkout" do 
    @checkout = params[:item] 
    @session[item] = "item"
    @session = session 
  end
  
end