class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.string :payment_id
      t.datetime :date_time
      t.decimal :total
      t.string :status, limit: 20
      t.string :payment_mode, limit: 30

      t.timestamps
    end
  end
end
