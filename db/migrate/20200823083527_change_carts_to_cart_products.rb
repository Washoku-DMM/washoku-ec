class ChangeCartsToCartProducts < ActiveRecord::Migration[5.2]
  def change
  	rename_table :carts, :cart_products

  end
end
