class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.references :contactable, polymorphic: true, null: false, index: true
      t.integer :contact_type, null: false
      t.string :detail, null: false

      t.timestamps null: false
    end
  end
end
