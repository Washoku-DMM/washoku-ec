
class Admins::ProductsController < ApplicationController

  before_action :authenticate_admins_admin!, only: [:edit, :update, :index, :show, :new, :create]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
    @genre = @product.genre
    # @order_products = @customer.product(params[:id])
    # @customer = customer.find(params[:id])

  end

  def create
    @product = Product.new(product_params)
    @product.save
    redirect_to admins_products_path, notice: "追加完了"
  else
    @product = Product.new
    render "new"
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
       redirect_to admins_products_path, notice: "更新完了"
     else
      @product = Product.find(params[:id])
      render "edit"
    end
  end



  private
  def product_params
    params.require(:product).permit(:name, :price, :is_active, :genre_id, :product_introduction, :image, :product_status)
  end
  def customer_params
    params.require(:customer).permit(:family_name, :first_name, :email, :is_deleted, :postal_code, :address, :phone_number)
  end


end
