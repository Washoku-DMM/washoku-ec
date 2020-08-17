class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|
      t.integer :price
      t.integer :count
      t.integer :product_status

      t.timestamps
    end
  end
end
