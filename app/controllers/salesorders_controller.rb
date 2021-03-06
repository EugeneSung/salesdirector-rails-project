class SalesordersController < ApplicationController
  before_action :set_salesorder, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:show, :edit, :update, :destroy]

  def index
    @salesorder = Salesorder.all
  end
  def new
    @salesorder = Salesorder.new
    @salesorder.customer_id = params[:customer_id]
    5.times{@salesorder.product_salesorders.build}
    #binding.pry

  end
  def show

    #binding.pry
  end
  def edit
  end
  def create

      @salesorder = Salesorder.new(salesorder_params)

        if(@salesorder.valid? and @salesorder.save)
              flash[:notice] = "Order created successfully"
              redirect_to salesorder_url(@salesorder)
        else
              flash[:error] = @salesorder.errors.full_messages.to_sentence
              redirect_to action: "new"
        end

    end


  def update
  respond_to do |format|
    if @salesorder.update(salesorder_params)
      format.html { redirect_to @salesorder, notice: 'Order was successfully updated.' }
    else
      flash[:error] = @salesorder.errors.full_messages.to_sentence
      format.html { render :edit }
    end
  end









  end

  def destroy
    #binding.pry
  @salesorder.destroy
  respond_to do |format|
    format.html { redirect_to customer_path(@salesorder.customer), notice: 'Order was successfully destroyed.' }
  end
  end


  private

  def salesorder_params
    params.require(:salesorder).permit(:customer_id, :order_number, :salesman_id, product_salesorders_attributes: [:salesorder_id, :product_id, :quantity])
  end
  def set_salesorder
    @salesorder = Salesorder.find(params[:id])
  end





end
