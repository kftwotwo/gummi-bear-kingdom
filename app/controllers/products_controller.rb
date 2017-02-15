class ProductsController < ApplicationController
  before_action :require_user, only: [:index, :show]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product[:user_id]= current_user.id
    if @product.save
      flash[:notice] = 'Saved!'
      redirect_to  products_path
    else
      render :new
    end
  end

  def show
    @product= Product.find(params[:id])
  end

  def edit
    @product= Product.find(params[:id])
  end

  def update
    @product= Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

private
  def product_params
    params.require(:product).permit(:name, :price, :made_from, :picture, :user_id)
  end
end
