class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.references :categories
      t.string :name, limit: 100
      t.text :description
      t.decimal :mrp
      t.decimal :discount
      t.string :discount_type, limit: 3

      t.timestamps
    end
  end
end
