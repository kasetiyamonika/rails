class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :first_name, limit: 100
      t.string :last_name, limit: 100
      t.string :email
      t.decimal :mobile, limit: 13
      t.text :address

      t.timestamps
    end
  end
end
