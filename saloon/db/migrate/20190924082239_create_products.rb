class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name, limit:100
      t.text :description
      t.decimal :mrp
      t.decimal :discount
      t.string :discounttype
      t.integer :category_id

      t.timestamps
    end
  end
end
