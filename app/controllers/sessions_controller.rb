class SessionsController < ApplicationController

  def new
    @salesman = Salesman.new
  end

def create

  @salesman = User.find_by(name: params[:name])
  if @salesman && @salesman.authenticate(params[:password])
    session[:salesman_id] = @salesman.id
    redirect_to salesman_path(@salesman)
  else
    render 'new'
  end


end

def destroy

  session.clear
   redirect_to '/'

end
end
