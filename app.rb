require_relative 'config/environment'

class App < Sinatra::Base
  
  
  configure do
  enable :sessions
  end
  
  get "/" do 
    erb :index
    @session = session
  end
  
  post "/checkout" do 
    @checkout = params[:item] 
    
  end
  
end