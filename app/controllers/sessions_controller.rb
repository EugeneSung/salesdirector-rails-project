class SessionsController < ApplicationController

  def index
  end
  def new
    @salesman = Salesman.new
  end

def create

  @salesman = Salesman.find_by(name: params[:name])
  if @salesman && @salesman.authenticate(params[:password])
    session[:salesman_id] = @salesman.id
    flash[:notice] = 'Signed in successfully.'
    redirect_to salesman_path(@salesman)
  else
    flash[:notice] = 'Invalid email/password combination'
    render :new
  end


end

def destroy

  session[:salesman_id] = nil
  redirect_to root_url, notice: "Logged out"
end
end
