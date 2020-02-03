class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :marks,  :integer
    add_column :users, :standard,  :string
    add_column :users, :division,    :string
  end
end
