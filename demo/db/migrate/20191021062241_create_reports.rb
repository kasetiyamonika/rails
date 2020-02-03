class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.integer :reportable_id
      t.string :reportable_type
      t.string :report_type

      t.timestamps
    endh
  end
end
