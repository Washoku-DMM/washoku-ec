
class DeliveriesController < ApplicationController

before_action :authenticate_customers_customer!
before_action :set_customer

def index
	@delivery = Delivery.new
	@customer = current_customers_customer
	@deliveries = Delivery.where(customer_id: @customer.id)
end

def create
	@delivery = Delivery.new(delivery_params)
	@delivery.customer_id = current_customers_customer.id
	@customer = current_customers_customer
	if @delivery.save
      flash[:success] = '新しい住所を登録しました！'
      redirect_to deliveries_path(@customer)
    else
      @delivery = @customer.delivery
      flash[:danger] = '入力内容をご確認ください。各入力欄は2文字以上で記入されていますか？'
      render :index
    end
end

def edit
	@delivery = Delivery.find(params[:id])
	if @delivery.customer_id != current_customers_customer.id
      redirect_back(fallback_location: root_path)
      flash[:danger] = 'お探しのページにアクセスできません。'
    end
end

def update
	@delivery = Delivery.find(params[:id])
	if @delivery.update(delivery_params)
      flash[:success] = '住所情報を更新しました！'
      redirect_to deliveries_path
    else
      flash[:danger] = '入力内容をご確認ください。各入力欄は2文字以上で記入されていますか？'
      render :edit
	end
end

def destroy
	@delivery = Delivery.find(params[:id])
	@delivery.destroy
	flash[:info] = '登録した住所を削除しました。'
	redirect_to deliveries_path(@delivery)
end

private

def delivery_params
    params.require(:delivery).permit(:postal_code, :address, :name)
end

def set_customer
    @customer = current_customers_customer
  end

end
