class ClientsController < ApplicationController
  def  new
  end
  
  def create
    @client = Client.new(client_params)
    
    @client.save
    redirect_to @client
  end
  
  def show
    @client = Client.find(params[:id])
  end
  
  private
    def client_params
      params.require(:client).permit(:fname, :lname, :email, :password, :confirm_password)
    end
end
