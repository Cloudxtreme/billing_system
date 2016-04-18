class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :id_number
      t.string :first_name
      t.string :last_name
      t.byte :gender
      t.text :address
      t.boolean :gender
      t.string :picture

      t.timestamps null: false
    end
  end
end
