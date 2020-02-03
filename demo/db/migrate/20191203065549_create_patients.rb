class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.decimal :mobile

      t.timestamps
    end
  end
end
