class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.integer :contactable_id
      t.string :contactable_type
      t.integer :contact_type
      t.string :detail

      t.timestamps null: false
    end
  end
end
