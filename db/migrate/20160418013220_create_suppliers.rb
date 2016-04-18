class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.text :address
      t.string :contact_name

      t.timestamps null: false
    end
  end
end
