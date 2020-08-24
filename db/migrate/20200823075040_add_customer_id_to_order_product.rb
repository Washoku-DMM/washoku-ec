class AddCustomerIdToOrderProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :order_products, :customer_id, :integer
  end
end
