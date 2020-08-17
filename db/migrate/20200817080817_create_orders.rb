class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :shipping_fee
      t.string :postal_code
      t.string :address
      t.string :name
      t.integer :payment_methods
      t.integer :billing_amount
      t.integer :order_status

      t.timestamps
    end
  end
end
