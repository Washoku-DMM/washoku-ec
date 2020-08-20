class ProductsController < ApplicationController


  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    @genre = Genre.find(params[:id])
<<<<<<< HEAD
=======

>>>>>>> 63706cb0660a71f7bffe9d01f9a4a17af2251103
  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to admin_product_path(product.id)
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to admin_product_path(product.id)
  end

  private
  def product_params
    params.require(:product).permit(:name,:price,:is_active,:production_introduction,:image_id)
  end


end
