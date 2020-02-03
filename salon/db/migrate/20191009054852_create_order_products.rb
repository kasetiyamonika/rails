class CreateOrderProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_products do |t|
      t.integer :product_id
      t.integer :order_id
      t.decimal :price
      t.decimal :discount
      t.string :discount_type, limit: 3
      t.decimal :total

      t.timestamps
    end
  end
end
