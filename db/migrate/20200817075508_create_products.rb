class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.boolean :is_active
      t.text :product_introduction
      t.string :image_id

      t.timestamps
    end
  end
end
