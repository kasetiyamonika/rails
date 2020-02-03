class AddDiscounttypeColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :discount_type, :string
  end
end
