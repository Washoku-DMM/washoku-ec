class ChangePaymentMethodsOfOrder < ActiveRecord::Migration[5.2]

	def up
    change_column :orders, :payment_methods, :boolean
  	end

  	def down
    change_column :orders, :payment_methods, :integer
  	end

end
