class CustomersController < ApplicationController

  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:show, :edit, :update, :destroy]

  def index
    @customer = Customer.all
  end
  def new
    @customer = Customer.new
  end
def show

end
def edit
end
def create


  @customer = Customer.new(customer_params)
  if(@customer.valid? and @customer.save)
        flash[:notice] = "Account created successfully"
        redirect_to customer_path(@customer)
    else
        flash[:error] = @customer.errors.full_messages.to_sentence
        redirect_to action: "new"
    end

end

def update
  respond_to do |format|
    if @customer.update(customer_params)
      format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
    else
      flash[:error] = @customer.errors.full_messages.to_sentence
      format.html { render :edit }
    end
  end
end

def destroy
  @customer.destroy
  respond_to do |format|
    format.html { redirect_to customer_url, notice: 'Customer was successfully destroyed.' }
  end
end


private

def customer_params
  params.require(:customer).permit(:name, :phone_number, :address, :salesman_id)
end
def set_customer
  @customer = Customer.find(params[:id])
end

end
