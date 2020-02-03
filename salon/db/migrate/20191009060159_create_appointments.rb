class Creates < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :payment_id
      t.string :payment_mode, limit: 30
      t.integer :service_id
      t.decimal :price
      t.datetime :start_time
      t.datetime :end_time
      t.string :status, limit: 20
      t.text :remark

      t.timestamps
    end
  end
end
