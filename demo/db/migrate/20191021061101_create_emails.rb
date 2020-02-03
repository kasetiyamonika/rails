class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.string :email, limit:50

      t.timestamps
    end
  end
end
