class SalesmenController < ApplicationController

  before_action :set_salesman, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:show, :edit, :update, :destroy]

  def index
    @salesmen = Salesman.all
  end
  def new
    @salesman = Salesman.new
  end
def show


    if !current_salesman.admin
      if current_salesman != @salesman
        redirect_to root_path
      end
    end
end
def edit
end
def create


  @salesman = Salesman.new(salesman_params)
 if @salesman.save
   session[:salesman_id] = @salesman.id
   redirect_to salesman_path(@salesman)
 else
   render :new
 end
end

def update
  respond_to do |format|
    if @salesman.update(salesman_params)
      format.html { redirect_to @salesman, notice: 'Salesman was successfully updated.' }
    else
      format.html { render :edit }
    end
  end
end

def destroy
  @salesman.destroy
  respond_to do |format|
    format.html { redirect_to salesmen_url, notice: 'Salesman was successfully destroyed.' }
  end
end


private

def salesman_params
  params.require(:salesman).permit(:name, :phone_number, :password, :title, :password_confirmation)
end
def set_salesman
  @salesman = Salesman.find(params[:id])
end


end
