class CreateEmailsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :emails_users do |t|
      t.integer :user_id
      t.integer :email_id

      t.timestamps
    end
  end
end
