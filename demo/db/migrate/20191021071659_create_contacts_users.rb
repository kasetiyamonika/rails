class CreateContactsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts_users do |t|
      t.integer :user_id
      t.integer :contact_id

      t.timestamps
    end
  end
end
