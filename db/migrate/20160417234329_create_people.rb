class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :id_number, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.text :address
      t.boolean :gender
      t.string :picture

      t.timestamps null: false
    end
  end
end
