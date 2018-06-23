class ProductsController < ApplicationController

  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :require_login, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end
  def new
    @product = Product.new
  end
def show

end
def edit
end
def create


  @product = Product.new(product_params)
  if(@product.valid? and @product.save)
        flash[:notice] = "Product created successfully"
        redirect_to product_path(@product)
    else
        flash[:error] = @product.errors.full_messages.to_sentence
        redirect_to action: "new"
    end

end

def update
  respond_to do |format|
    if @product.update(product_params)
      format.html { redirect_to @product, notice: 'Product was successfully updated.' }
    else
      flash[:error] = @product.errors.full_messages.to_sentence
      format.html { render :edit }
    end
  end
end

def destroy
  @product.destroy
  respond_to do |format|
    format.html { redirect_to products_url, notice: 'Product was successfully destroyed.' }
  end
end


private

def product_params
  params.require(:product).permit(:name, :description, :price, :inventory)
end
def set_product
  @product = Product.find(params[:id])
end

end
