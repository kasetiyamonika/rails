class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.decimal :mobile, limit:13

      t.timestamps
    end
  end
end
