class Admins::ProductsController < ApplicationController

  def index
    @products = Product.all
  end
  def new
    @product = Product.new
  end
  def show
    @product = Product.find(params[:id])
    @genre = Genre.find(params[:id])

  end
  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to admins_products_path
  end
  def edit
    @product = Product.find(params[:id])
  end
  def update
    @product = Product.find(params[:id])
    @product.update(product_params)
    redirect_to admins_product_path(product.id)
  end

  private
  def product_params
    params.require(:product).permit(:name,:price,:is_active,:product_introduction,:image_id)
  end

end
