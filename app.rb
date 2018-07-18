require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{user_name}!"
  end

  # This is a sample dynamic route.
  get "/goodbye/:name" do
    @user_name = params[:name]
    "Goodbye #{@user_name}."
  end

  # Code your final two routes here:
  
  get '/multiply/:num1/:num2' do
    @num1 = params[:num1].to_i 
    @num2 = params[:num2].to_i 
    " Product is #{@num1 * @num2}"
    
    # Product is #{params[:num1]} * #{params[:num2]}."
  end
  
end

