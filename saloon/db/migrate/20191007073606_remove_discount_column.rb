class RemoveDiscountColumn < ActiveRecord::Migration[6.0]
  def change
    remove_column :products, :discounttype, :string
  end
end
