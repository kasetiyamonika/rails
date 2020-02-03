class CreateArticalls < ActiveRecord::Migration[6.0]
  def change
    create_table :articalls do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
  end
end
